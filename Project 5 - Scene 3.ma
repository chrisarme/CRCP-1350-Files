//Maya ASCII 2018 scene
//Name: Project 5 - Scene 3.ma
//Last modified: Mon, Apr 16, 2018 04:22:55 PM
//Codeset: 1252
requires maya "2018";
requires -nodeType "MASH_Flight" -nodeType "MASH_Waiter" -nodeType "MASH_Id" -nodeType "MASH_Distribute"
		 -nodeType "MASH_Color" -nodeType "MASH_Repro" "MASH" "450";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 -nodeType "aiStandardSurface" "mtoa" "2.0.1";
requires -nodeType "polyPlatonic" "modelingToolkit" "0.0.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "6BAAF8B1-4649-3F6A-703A-85BA2D359289";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -13.649783308544187 -89.022717479895448 -32.996306878818203 ;
	setAttr ".r" -type "double3" -277.53835272956832 -232.19999999998188 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "41F086B0-475B-C319-DA66-76AE9F8811BF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 92.500634075106007;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "A420A2D6-473F-BDE2-C3A2-FDB6B700625F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0FD47C2F-48BE-F13B-04A5-4FA9D5A5FA06";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "B097BD34-46D0-CDF8-710C-67A32664C997";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "469A5B50-42EC-B3DF-C13B-8C8EFEAF5D97";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "F6DEF550-4D36-03FF-D036-4A900961D234";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3D14BED9-40FB-99D8-A934-A3AF292F2D31";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCone1";
	rename -uid "AB0F0E55-4659-4FE8-5494-4F921113E407";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 6.2951524236116052 0 ;
createNode mesh -n "pConeShape1" -p "pCone1";
	rename -uid "C2222C5B-468B-9DCA-F9A3-FF9B4BD508F8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "MASH1_ReproMesh";
	rename -uid "48A74C2D-46CD-546F-E062-F788DD0165A5";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
createNode mesh -n "MASH1_ReproMeshShape" -p "MASH1_ReproMesh";
	rename -uid "3E03E629-4359-C269-728A-8C8130FCDB12";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet";
	setAttr ".clst[0].clam" yes;
	setAttr ".clst[0].rprt" 3;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "MASH1_Flight";
	rename -uid "B15729C2-4598-B824-FD46-D4B875469612";
	setAttr ".t" -type "double3" 0 12.284485006431481 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
createNode MASH_Flight -n "MASH1_FlightShape" -p "MASH1_Flight";
	rename -uid "1FB3B8C0-484D-3355-8778-EE9A88C39786";
	setAttr -k off ".v";
	setAttr ".inputInertia" -type "vectorArray" 0 ;
	setAttr ".fArray" -type "vectorArray" 0 ;
	setAttr ".cohesionStrength" 0;
	setAttr ".seperationStrength" 3.1868131160736084;
	setAttr ".steeringForce" 0.80000001192092896;
	setAttr ".searchDistance" 68.681632995605469;
	setAttr ".seperationThreshold" 0.2534945011138916;
	setAttr ".alignThreshold" 0.67614835500717163;
	setAttr ".FoV" 360;
	setAttr -s 3 ".alignRamp[0:2]"  0 0 2 0.5 1 2 1 0 1;
	setAttr -s 2 ".cohereRamp[0:1]"  0 0 2 1 1 1;
	setAttr -s 2 ".separateRamp[0:1]"  0 1 2 1 0 1;
	setAttr -s 2 ".obstacleRamp[0:1]"  0 1 2 1 0 1;
	setAttr -s 2 ".attractorRamp[0:1]"  0 1 2 1 1 1;
	setAttr -s 2 ".predatorAndPreyRamp[0:1]"  0 1 2 1 0 1;
	setAttr -s 2 ".gravityRamp[0:1]"  0.25 0 2 1 1 1;
	setAttr -s 2 ".arrivalRamp[0:1]"  0 1 2 1 1 1;
	setAttr ".targetStrength" 10;
	setAttr ".targetDistance" 240.65934753417969;
	setAttr ".displayType" 6;
createNode transform -n "nurbsCircle1";
	rename -uid "72C1E62A-42F7-A60E-5203-1FA70EFEEE97";
	setAttr ".s" -type "double3" 53.1365352896565 1 53.1365352896565 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "nurbsCircle1";
	rename -uid "820B739C-458C-8FE8-57D0-829D009DDD23";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "positionMarker1" -p "nurbsCircleShape1";
	rename -uid "61514670-4155-C1E4-6DCE-2FB1F9AF2E4E";
createNode positionMarker -n "positionMarkerShape1" -p "positionMarker1";
	rename -uid "BA9E1E34-485F-A910-6401-069C2409B86B";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
	setAttr ".t" 1;
createNode transform -n "locator1";
	rename -uid "295F3750-438D-6BDB-9AC6-468CD74EDDEE";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
	setAttr ".smd" 7;
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "6873AE5E-4CE6-DF6D-6CE6-0A8EC70A1754";
	setAttr -k off ".v";
createNode transform -n "pCone2";
	rename -uid "B3567DA0-4B09-7F16-7B07-EEB49B3DB4F8";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
createNode mesh -n "pConeShape2" -p "pCone2";
	rename -uid "93BD3CA6-4DEA-501E-CCE8-3BBC780E8ABD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "aiSkyDomeLight1";
	rename -uid "1307FD56-4240-2753-A538-2599309D25FD";
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "D3036A44-4048-2556-21D6-CD9F8833FA03";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.8549844 0.87135625 0.88790953 ;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode transform -n "pPlatonic1";
	rename -uid "33A0FF6D-4A5D-500F-86B4-A79A71E9C3B8";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
createNode mesh -n "pPlatonicShape1" -p "pPlatonic1";
	rename -uid "6B72E022-410F-60BA-0FDB-4E980D9041B9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "911D19B1-4FF7-7C88-FF5A-2087023598D4";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "814FC93B-418C-63FB-1DBC-2AB061663CA4";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "FC862B6D-4054-F7C1-747D-F7B61F267CEE";
createNode displayLayerManager -n "layerManager";
	rename -uid "F55B9333-43B2-78C2-C0BB-22909ED5931D";
createNode displayLayer -n "defaultLayer";
	rename -uid "E796652E-49AE-3E9A-3069-A1B62B102566";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F68636CE-42E6-7CB9-9D03-309F92CAB4A4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7E02A7B2-4CEB-9BAA-1003-A3BD4255198F";
	setAttr ".g" yes;
createNode polyCone -n "polyCone1";
	rename -uid "C4C624D2-40FA-7509-15A7-C6870C8BA80F";
	setAttr ".r" 2;
	setAttr ".h" 4;
	setAttr ".cuv" 3;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "8F9D1747-4699-9BBB-A5B6-E6A7A9BFF288";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode motionPath -n "motionPath1";
	rename -uid "F6C2AB74-4726-735E-4A85-C684F2BF966D";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode animCurveTL -n "motionPath1_uValue";
	rename -uid "F3C7E315-426E-20B0-AB08-C2BEF513368A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode addDoubleLinear -n "addDoubleLinear1";
	rename -uid "F7748A32-4D6F-D93A-AC48-3EBD0094E9FF";
createNode addDoubleLinear -n "addDoubleLinear2";
	rename -uid "33EEE622-4212-AAD4-5126-F9B5FC642464";
createNode addDoubleLinear -n "addDoubleLinear3";
	rename -uid "CD0FD399-43BE-8BB7-06EC-688C1BD59E82";
createNode MASH_Repro -n "MASH1_Repro";
	rename -uid "6F8F6B9E-4221-EFD9-8F53-FBA1E08288D4";
	addAttr -s false -ci true -h true -sn "instancerMessage" -ln "instancerMessage" 
		-at "message";
	setAttr ".numberOfObjects" 3;
	setAttr ".setC" yes;
	setAttr -s 3 ".instancedGroup";
	setAttr ".instancedGroup[0].inMesh[0].inShGroupId[0]"  -1;
	setAttr ".instancedGroup[1].inMesh[0].inShGroupId[0]"  -1;
	setAttr ".instancedGroup[2].inMesh[0].inShGroupId[0]"  -1;
createNode MASH_Waiter -n "MASH1";
	rename -uid "F97DDE85-416D-9E18-F15D-70AE88419066";
	addAttr -s false -ci true -h true -sn "instancerMessage" -ln "instancerMessage" 
		-at "message";
	setAttr ".inRotPP" -type "vectorArray" 80 89.309971218499726 35.001435168542372
		 -179.99998414742868 35.036714874708188 -5.2156989058088037 -179.99998414742871 49.346054548247288
		 -18.313141182100111 -179.99998414742871 93.654220447631673 -22.558465334080054 -179.99998414742871 -104.82001907515064
		 86.556489256055244 -5.2951930247773641e-14 128.35782516272641 -65.981852936138822
		 -179.99998414742871 80.658946811303522 74.32935237729049 -179.99998414742868 128.92061705441824
		 0.0072020855757240036 -179.99998414742871 109.80012242669014 2.5263094810053008 -179.99998414742871 102.5022223919096
		 -64.092077071932323 -179.99998414742871 106.64895848802341 -25.583239839255771 -179.99998414742871 109.08881891983522
		 -3.3681531526639361 -179.99998414742871 34.556927130077135 30.929794772861875 -179.99998414742871 -69.023536741040289
		 -18.99292229976119 0 149.10309403391915 -82.320518802008422 -179.99998414742865 116.8238571447767
		 32.261241981666259 -179.99998414742871 127.11525010004371 66.471468858521177 -179.99998414742868 123.89458522334317
		 21.362784092422309 -179.99998414742871 -100.5661663226677 -32.473329160062846 3.7700321091815945e-15 106.64806768277758
		 18.402998315077152 -179.99998414742871 114.03386607232237 7.8342689327598851 -179.99998414742871 109.41648550149108
		 -25.83805336321274 -179.99998414742868 -94.367137409319383 5.6828491890878592 0 96.297299348016239
		 -10.981512190978162 -179.99998414742871 74.46953963065333 50.88147439659793 -179.99998414742871 130.98827172911211
		 12.893975641216484 -179.99998414742871 117.19664544540726 18.98750759644108 -179.99998414742871 -53.032713944876498
		 -87.683046402891804 -1.5734422643989307e-13 58.672840200077417 -45.435298542450234
		 -179.99998414742871 -76.506029516330671 -21.725336144303981 1.711873980072051e-15 112.85886146475494
		 0.069773861544976487 -179.99998414742871 91.880442012844298 -23.398882295960405 -179.99998414742868 -140.84240313258172
		 -61.704767817418492 0 127.55716009249026 -5.8827100049194367 -179.99998414742871 -86.349432706462068
		 79.266928545006266 -1.7078254861884343e-14 96.105895679987071 -43.081475922426812
		 -179.99998414742868 141.14149347729676 35.541160704314223 -179.99998414742871 -72.1968361396125
		 -87.370319056987739 -1.3864362950988157e-13 116.28419945012867 9.694408766769202
		 -179.99998414742871 -83.914920387357569 -3.7444280994589745 0 87.691739696110375
		 -58.462838127055797 -179.99998414742868 -131.53623083142921 -2.512334224502117 -1.989759925928587e-16 83.250077362733862
		 28.119815117120485 -179.99998414742871 -31.784987893965624 -49.211145101147281 0 -75.604410530672567
		 77.544313106101853 0 101.81929975039026 -22.195066760227849 -179.99998414742868 -151.18451251418844
		 -59.389617919784008 0 -12.901957634503392 11.798445346968352 -2.0307511635710099e-16 -155.72813093485664
		 16.875632757812259 4.1546038107865461e-16 -51.325779745318535 67.547720315186297
		 0 145.51464548556453 -51.690184296379527 -179.99998414742871 91.146565946214452 50.343988238636072
		 -179.99998414742871 69.508131758017754 8.4242602327517133 -179.99998414742871 78.605777149878975
		 15.067080863358859 -179.99998414742868 98.590556150971764 -6.6747975126925043 -179.99998414742871 117.49492621614931
		 37.145863909438994 -179.99998414742871 106.60455759845803 58.382270679542088 -179.99998414742871 102.56448767199988
		 1.0083072289444386 -179.99998414742871 -63.501631803915949 -1.8251448061139277 -9.9442818709153293e-17 49.184075261170534
		 30.659910334053521 -179.99998414742871 -107.60870252700686 23.324040744409221 -1.7317999215817869e-15 119.8666942873967
		 -29.591161536699001 -179.99998414742871 -16.199815768153712 0.49060260944700368 1.2424501637576097e-17 91.498991022666956
		 11.525308124129152 -179.99998414742871 -81.080438812538716 -23.820498791403484 -1.7383595602604237e-15 -46.380844718245903
		 -84.361067170125537 3.2368885503112751e-14 -116.88272244557614 -89.050550440697691
		 -1.919371625039756e-13 106.24964370705952 -29.162557386706709 -179.99998414742871 114.11223478223214
		 33.713595024350248 -179.99998414742871 -59.619868596247123 71.35696370667084 0 100.86213649182407
		 37.672141719583294 -179.99998414742868 111.75762611941384 -52.908131179118215 -179.99998414742871 -82.573528767466328
		 -24.202974292384123 1.7435367086997493e-15 99.236264323998384 -27.72496362697423
		 -179.99998414742871 105.22994493173097 23.363460020792811 -179.99998414742871 -68.073470585867923
		 28.667631232552985 -3.6249062197715434e-15 169.8247945770255 8.2396364919306091 -179.99998414742871 120.19585766547405
		 -47.577871478559388 -179.99998414742871 89.082094737733357 45.78703460962624 -179.99998414742868 73.624226570071684
		 -18.500332998268036 -179.99998414742871 ;
	setAttr ".cacheIdPP" -type "vectorArray" 0 ;
	setAttr ".cacheVisibilityPP" -type "vectorArray" 0 ;
	setAttr ".initSt" -type "vectorArray" 0 ;
	setAttr ".filename" -type "string" "0";
createNode MASH_Distribute -n "MASH1_Distribute";
	rename -uid "97163125-4F97-5854-8576-7B8BF12D6983";
	setAttr ".mapDirection" 4;
	setAttr ".pointCount" 80;
	setAttr ".fArray" -type "vectorArray" 0 ;
	setAttr ".inPPP" -type "vectorArray" 0 ;
	setAttr -s 3 ".scaleRamp[0:2]"  0 0 1 0 0 1 1 1 1;
	setAttr -s 3 ".rotationRamp[0:2]"  0 0 1 0 0 1 1 1 1;
	setAttr -s 3 ".bRmp[0:2]"  0 0 1 0 0 1 1 1 1;
	setAttr ".bRmpX[0]"  0 1 1;
	setAttr ".bRmpY[0]"  0 1 1;
	setAttr ".bRmpZ[0]"  0 1 1;
	setAttr ".rt" 3;
createNode MASH_Color -n "MASH1_Color";
	rename -uid "2080352C-44D6-8966-4107-5A9864B75DC2";
	setAttr ".color" -type "float3" 0 0.88461661 1 ;
	setAttr ".hueRandom" 1;
	setAttr ".saturationRandom" 1;
createNode MASH_Id -n "MASH1_ID";
	rename -uid "4BF1C7C7-423E-1D60-7ED4-7A91889A891C";
	setAttr ".fArray" -type "vectorArray" 0 ;
	setAttr ".nuob" 3;
	setAttr ".idt" 2;
createNode polyCone -n "polyCone2";
	rename -uid "F2EDBABA-4411-81AA-EFBD-BFB36C880F7B";
	setAttr ".r" 3;
	setAttr ".h" 4;
	setAttr ".sa" 4;
	setAttr ".cuv" 3;
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "FE6686B5-45D8-8D67-A1D1-DEA08EA387BF";
	setAttr ".base" 1;
	setAttr ".base_color" -type "float3" 0.082281619 0.59720433 0.01444381 ;
	setAttr ".specular_color" -type "float3" 1.0000241 0.98225331 0.75295413 ;
	setAttr ".specular_roughness" 0.15000000596046448;
	setAttr ".metalness" 1;
	setAttr ".transmission_depth" 1;
	setAttr ".coat_roughness" 0;
	setAttr ".coat_IOR" 4;
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "329AFA2C-4FF9-B530-3C44-8A913D4ADB19";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "57D409E1-4AC0-5D52-159E-AF983A8CD4C8";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "581E9A54-4AF3-0358-0E21-628888811B38";
	setAttr ".version" -type "string" "2.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "C8AB4220-477B-C022-7E92-D68BDF050E05";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "D3C96439-446F-67F9-B717-5188F5A38940";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "F7761895-4360-21A8-7B45-4F82B0CDB5EB";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode groupId -n "groupId2";
	rename -uid "CE715FD0-42FB-3202-03C5-6A8B36B41699";
createNode aiStandardSurface -n "aiStandardSurface2";
	rename -uid "3A0E3453-4BFB-C81C-AAD1-018218755CB8";
	setAttr ".base" 1;
	setAttr ".base_color" -type "float3" 0.056129687 0.28744602 0.87961036 ;
	setAttr ".specular_roughness" 0.25;
	setAttr ".specular_IOR" 2.4179999828338623;
	setAttr ".specular_anisotropy" 0.5;
	setAttr ".subsurface_color" -type "float3" 0.0603 0.43979999 0.19159999 ;
	setAttr ".subsurface_scale" 0.10000000149011612;
	setAttr ".coat_roughness" 0;
	setAttr ".coat_IOR" 1;
createNode shadingEngine -n "aiStandardSurface2SG";
	rename -uid "6C3A02C7-47F2-0CD4-4452-ED81B304CAF8";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "C00E87EC-49E7-0963-5F59-6491C3E9AAF6";
createNode groupId -n "groupId3";
	rename -uid "6CAB2571-471F-A40D-0269-E7B1643668A4";
createNode polyPlatonic -n "polyPlatonic1";
	rename -uid "76620901-4D3D-8D8F-1182-6DA0C5532A44";
	setAttr ".radius" 2;
createNode aiStandardSurface -n "aiStandardSurface3";
	rename -uid "7FBEF988-46AB-C5DA-5744-FDA698379B43";
	setAttr ".base" 1;
	setAttr ".base_color" -type "float3" 0.66540021 0.35153702 0.015208339 ;
	setAttr ".specular_color" -type "float3" 1 0 0 ;
	setAttr ".specular_roughness" 0.40000000596046448;
	setAttr ".specular_IOR" 1.5;
	setAttr ".metalness" 1;
	setAttr ".coat" 1;
	setAttr ".coat_IOR" 2;
createNode shadingEngine -n "aiStandardSurface3SG";
	rename -uid "1C32CEFA-4EC7-5072-E079-71AAF03E54E3";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "C7D4BD5F-4609-0452-CFA8-4889CA311401";
createNode groupId -n "groupId4";
	rename -uid "D2509DDE-4658-D298-328A-4F8C2DC9DEEF";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "AAB799D0-4488-1F7F-B89A-1E8DBE4F940B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 494\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 493\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 494\n            -height 328\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 994\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"sshape\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 994\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 994\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8AD0CEB3-45C1-F563-9180-6795CF6D5527";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 154 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 69;
	setAttr ".unw" 69;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyCone1.out" "pConeShape1.i";
connectAttr "MASH1_Repro.out" "MASH1_ReproMeshShape.i";
connectAttr "groupId3.id" "MASH1_ReproMeshShape.iog.og[0].gid";
connectAttr "aiStandardSurface2SG.mwc" "MASH1_ReproMeshShape.iog.og[0].gco";
connectAttr "groupId2.id" "MASH1_ReproMeshShape.iog.og[1].gid";
connectAttr "aiStandardSurface1SG.mwc" "MASH1_ReproMeshShape.iog.og[1].gco";
connectAttr "groupId4.id" "MASH1_ReproMeshShape.iog.og[2].gid";
connectAttr "aiStandardSurface3SG.mwc" "MASH1_ReproMeshShape.iog.og[2].gco";
connectAttr ":time1.o" "MASH1_FlightShape.ti";
connectAttr "MASH1_Distribute.outputPoints" "MASH1_FlightShape.inputPoints";
connectAttr "locator1.t" "MASH1_FlightShape.targets[0]";
connectAttr "makeNurbCircle1.oc" "nurbsCircleShape1.cr";
connectAttr "addDoubleLinear1.o" "locator1.tx";
connectAttr "addDoubleLinear2.o" "locator1.ty";
connectAttr "addDoubleLinear3.o" "locator1.tz";
connectAttr "motionPath1.msg" "locator1.sml";
connectAttr "motionPath1.rx" "locator1.rx";
connectAttr "motionPath1.ry" "locator1.ry";
connectAttr "motionPath1.rz" "locator1.rz";
connectAttr "motionPath1.ro" "locator1.ro";
connectAttr "polyCone2.out" "pConeShape2.i";
connectAttr "polyPlatonic1.output" "pPlatonicShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "motionPath1_uValue.o" "motionPath1.u";
connectAttr "nurbsCircleShape1.ws" "motionPath1.gp";
connectAttr "positionMarkerShape1.t" "motionPath1.pmt[0]";
connectAttr "locator1.tmrx" "addDoubleLinear1.i1";
connectAttr "motionPath1.xc" "addDoubleLinear1.i2";
connectAttr "locator1.tmry" "addDoubleLinear2.i1";
connectAttr "motionPath1.yc" "addDoubleLinear2.i2";
connectAttr "locator1.tmrz" "addDoubleLinear3.i1";
connectAttr "motionPath1.zc" "addDoubleLinear3.i2";
connectAttr "MASH1_ReproMeshShape.wim" "MASH1_Repro.mmtx";
connectAttr "MASH1_ReproMeshShape.msg" "MASH1_Repro.meshmessage";
connectAttr "MASH1.outputPoints" "MASH1_Repro.inputPoints";
connectAttr "pCone1.msg" "MASH1_Repro.instancedGroup[0].gmsg";
connectAttr "pCone1.wm" "MASH1_Repro.instancedGroup[0].gmtx";
connectAttr "pConeShape1.o" "MASH1_Repro.instancedGroup[0].inMesh[0].mesh";
connectAttr "pConeShape1.wm" "MASH1_Repro.instancedGroup[0].inMesh[0].matrix";
connectAttr "groupId3.id" "MASH1_Repro.instancedGroup[0].inMesh[0].groupId[0]";
connectAttr "pCone2.msg" "MASH1_Repro.instancedGroup[1].gmsg";
connectAttr "pCone2.wm" "MASH1_Repro.instancedGroup[1].gmtx";
connectAttr "pConeShape2.o" "MASH1_Repro.instancedGroup[1].inMesh[0].mesh";
connectAttr "pConeShape2.wm" "MASH1_Repro.instancedGroup[1].inMesh[0].matrix";
connectAttr "groupId2.id" "MASH1_Repro.instancedGroup[1].inMesh[0].groupId[0]";
connectAttr "pPlatonic1.msg" "MASH1_Repro.instancedGroup[2].gmsg";
connectAttr "pPlatonic1.wm" "MASH1_Repro.instancedGroup[2].gmtx";
connectAttr "pPlatonicShape1.o" "MASH1_Repro.instancedGroup[2].inMesh[0].mesh";
connectAttr "pPlatonicShape1.wm" "MASH1_Repro.instancedGroup[2].inMesh[0].matrix"
		;
connectAttr "groupId4.id" "MASH1_Repro.instancedGroup[2].inMesh[0].groupId[0]";
connectAttr "MASH1.instancerMessage" "MASH1_Repro.instancerMessage";
connectAttr "MASH1_Color.outputPoints" "MASH1.inputPoints";
connectAttr "MASH1_Distribute.waiterMessage" "MASH1.waiterMessage";
connectAttr "MASH1_ID.outputPoints" "MASH1_Color.inputPoints";
connectAttr ":time1.o" "MASH1_ID.ti";
connectAttr "MASH1_FlightShape.outputPoints" "MASH1_ID.inputPoints";
connectAttr "aiStandardSurface1.out" "aiStandardSurface1SG.ss";
connectAttr "pConeShape2.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "MASH1_ReproMeshShape.iog.og[1]" "aiStandardSurface1SG.dsm" -na;
connectAttr "groupId2.msg" "aiStandardSurface1SG.gn" -na;
connectAttr "aiStandardSurface1SG.msg" "materialInfo1.sg";
connectAttr "aiStandardSurface1.msg" "materialInfo1.m";
connectAttr "aiStandardSurface1.msg" "materialInfo1.t" -na;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "aiStandardSurface2.out" "aiStandardSurface2SG.ss";
connectAttr "pConeShape1.iog" "aiStandardSurface2SG.dsm" -na;
connectAttr "MASH1_ReproMeshShape.iog.og[0]" "aiStandardSurface2SG.dsm" -na;
connectAttr "groupId3.msg" "aiStandardSurface2SG.gn" -na;
connectAttr "aiStandardSurface2SG.msg" "materialInfo2.sg";
connectAttr "aiStandardSurface2.msg" "materialInfo2.m";
connectAttr "aiStandardSurface2.msg" "materialInfo2.t" -na;
connectAttr "aiStandardSurface3.out" "aiStandardSurface3SG.ss";
connectAttr "pPlatonicShape1.iog" "aiStandardSurface3SG.dsm" -na;
connectAttr "MASH1_ReproMeshShape.iog.og[2]" "aiStandardSurface3SG.dsm" -na;
connectAttr "groupId4.msg" "aiStandardSurface3SG.gn" -na;
connectAttr "aiStandardSurface3SG.msg" "materialInfo3.sg";
connectAttr "aiStandardSurface3.msg" "materialInfo3.m";
connectAttr "aiStandardSurface3.msg" "materialInfo3.t" -na;
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
// End of Project 5 - Scene 3.ma
