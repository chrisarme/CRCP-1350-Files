//Maya ASCII 2018 scene
//Name: Sound and animation  - Project 4.ma
//Last modified: Wed, Mar 28, 2018 04:52:54 PM
//Codeset: 1252
requires maya "2018";
requires -nodeType "MASH_BulletSolver" -nodeType "MASH_Waiter" -nodeType "MASH_Transform"
		 -nodeType "MASH_Replicator" -nodeType "MASH_Offset" -nodeType "MASH_Random" -nodeType "MASH_Distribute"
		 -nodeType "MASH_Python" -nodeType "MASH_Dynamics" -nodeType "MASH_ChannelRandom"
		 -nodeType "MASH_Repro" "MASH" "450";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 -nodeType "aiStandardSurface" "mtoa" "2.0.1";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "62016F89-4F6C-7417-16B4-36B881B416D1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -44.567513121735111 43.340007134342009 60.881966700911633 ;
	setAttr ".r" -type "double3" -393.33835272947215 323.80000000002951 -1.9707008099399169e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "6AB1561D-4166-40AF-CEAF-A49B1E51C91B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 96.536676335685513;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.7841110229492188 -0.23366832733154297 -11.402719497680664 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "B21F0042-4BAC-282E-BF46-B4BA3D55C874";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C6B942E0-45B7-0AD6-A656-00A03CCA6760";
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
	rename -uid "D2B6DD17-4EA3-658D-34A7-258F5673888E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "24F24BED-4CAF-DB7B-FA08-CF9CC5F3CCC4";
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
	rename -uid "8C155D65-49FC-8693-1577-92A6B79DFE66";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F0306F90-46AC-1C3C-482D-BC9367916FB2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 28.432653061224492;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pTorus1";
	rename -uid "0E7D1BFB-4F2A-58F0-F7C4-CDBA0B962A5B";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "80E69AA9-401E-9E34-15DB-ED906D98692F";
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
	rename -uid "47536798-41A4-7C67-BF30-6DBECA3F18C1";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
createNode mesh -n "MASH1_ReproMeshShape" -p "MASH1_ReproMesh";
	rename -uid "7D2AA6B6-4BC3-F595-D9E0-2BA339DF0700";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube1";
	rename -uid "984243CD-4814-7CF9-35F6-2DBBCEEF508A";
	setAttr ".t" -type "double3" 0 4.9602808381651222 0 ;
	setAttr ".s" -type "double3" 1.5 1.5 1.5 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "5DC15B45-4D79-CCB2-B41C-1E8974A83F01";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 170 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 5.8207661e-11 ;
	setAttr ".pt[2]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[40]" -type "float3" 0 0 -1.4551915e-11 ;
	setAttr ".pt[43]" -type "float3" 0 0 1.1641532e-10 ;
	setAttr ".pt[57]" -type "float3" 0 0 -5.8207661e-11 ;
	setAttr ".pt[58]" -type "float3" 0 0 1.1641532e-10 ;
	setAttr ".pt[60]" -type "float3" 0 0 5.8207661e-11 ;
	setAttr ".pt[61]" -type "float3" 0 0 -1.4551915e-11 ;
	setAttr ".pt[62]" -type "float3" 0 0 -1.4551915e-11 ;
	setAttr ".pt[73]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[75]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".pt[76]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[77]" -type "float3" 0 0 5.8207661e-11 ;
	setAttr ".pt[79]" -type "float3" 0 0 5.8207661e-11 ;
	setAttr ".pt[90]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[91]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[92]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[93]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[94]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[95]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[97]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[100]" -type "float3" 0 0 -1.4551915e-11 ;
	setAttr ".pt[101]" -type "float3" 0 0 -1.4551915e-11 ;
	setAttr ".pt[110]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".pt[113]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[114]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[115]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[117]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[119]" -type "float3" 0 0 5.8207661e-11 ;
	setAttr ".pt[122]" -type "float3" 0 0 2.2351742e-08 ;
	setAttr ".pt[123]" -type "float3" 0 0 2.2351742e-08 ;
	setAttr ".pt[124]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[125]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[126]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[127]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[128]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[130]" -type "float3" 0 0 -2.2351742e-08 ;
	setAttr ".pt[131]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[132]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[134]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[135]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".pt[137]" -type "float3" 0 0 5.8207661e-11 ;
	setAttr ".pt[141]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[142]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[143]" -type "float3" 0 0 2.2351742e-08 ;
	setAttr ".pt[144]" -type "float3" 0 0 2.2351742e-08 ;
	setAttr ".pt[149]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[150]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[151]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[152]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[155]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[156]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[157]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[158]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[159]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[160]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[161]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[162]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[164]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[167]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[168]" -type "float3" 0 0 -5.8207661e-11 ;
	setAttr ".pt[171]" -type "float3" 0 0 1.1641532e-10 ;
	setAttr ".pt[172]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[173]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[174]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[175]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[177]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[178]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[179]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[181]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[185]" -type "float3" 0 0 -1.4551915e-11 ;
	setAttr ".pt[186]" -type "float3" 0 0 1.1641532e-10 ;
	setAttr ".pt[188]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[189]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[192]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[193]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[195]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[196]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[199]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[204]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[205]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[209]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[210]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".pt[211]" -type "float3" 0 0 -2.910383e-11 ;
	setAttr ".pt[212]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".pt[213]" -type "float3" 0 0 -5.8207661e-11 ;
	setAttr ".pt[224]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".pt[225]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[227]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[238]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".pt[239]" -type "float3" 0 0 -2.910383e-11 ;
	setAttr ".pt[241]" -type "float3" 0 0 -5.8207661e-11 ;
	setAttr ".pt[244]" -type "float3" 0 0 -1.4551915e-11 ;
	setAttr ".pt[275]" -type "float3" 0 0 2.3283064e-10 ;
	setAttr ".pt[276]" -type "float3" 0 0 -1.4551915e-11 ;
	setAttr ".pt[277]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[278]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[279]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[280]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[281]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[285]" -type "float3" 0 0 -1.4551915e-11 ;
	setAttr ".pt[302]" -type "float3" 0 0 -1.4551915e-11 ;
	setAttr ".pt[303]" -type "float3" 0 0 5.8207661e-11 ;
	setAttr ".pt[304]" -type "float3" 0 0 -1.4551915e-11 ;
	setAttr ".pt[314]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[315]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[317]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[318]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[321]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[322]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[325]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[326]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[330]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[331]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[332]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[333]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[337]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[338]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[339]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".pt[340]" -type "float3" 0 0 -2.3283064e-10 ;
	setAttr ".pt[341]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".pt[349]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".pt[350]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".pt[351]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[352]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[356]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[357]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[359]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[360]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[361]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[362]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[377]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[378]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[379]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[381]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[382]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[383]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[384]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[387]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".pt[388]" -type "float3" 0 0 -2.3283064e-10 ;
	setAttr ".pt[389]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[390]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[412]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[413]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[415]" -type "float3" 0 0 6.9849193e-10 ;
	setAttr ".pt[416]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[417]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[418]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[419]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[420]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[421]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[422]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[423]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[424]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[425]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[432]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[433]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[434]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[435]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[436]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".pt[437]" -type "float3" 0 0 -1.1175871e-08 ;
	setAttr ".pt[438]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[439]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[440]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[442]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[443]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[456]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[457]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[459]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[460]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "MASH1_BulletSolver";
	rename -uid "8909DF2E-4C59-54EE-3647-4FB81B24E1A3";
createNode MASH_BulletSolver -n "MASH1_BulletSolverShape" -p "MASH1_BulletSolver";
	rename -uid "66DB47F9-49AF-1558-6F65-6BA907BFC098";
	addAttr -s false -ci true -h true -sn "instancerMessage" -ln "instancerMessage" 
		-at "message";
	setAttr -k off ".v";
	setAttr ".lastTime" 248;
	setAttr ".groundPlane" no;
	setAttr ".gravity" -type "float3" 0 0 0 ;
createNode transform -n "camera1";
	rename -uid "92095FB6-4A75-1F94-11AA-97B26033167D";
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "18E8344D-4DA4-C0FB-46FF-D88025A3D0E7";
	setAttr -k off ".v";
	setAttr ".cap" -type "double2" 1.6009668768000003 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".fs" 18.590909077955242;
	setAttr ".fd" 10;
	setAttr ".coi" 12.009133465250201;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dr" yes;
	setAttr ".dof" yes;
	setAttr ".ai_shutter_curve[0]" -type "float2" 0 1;
	setAttr ".ai_focus_distance" 8;
	setAttr ".ai_aperture_size" 0.0099999997764825821;
	setAttr ".ai_aperture_blade_curvature" 0.49264705181121826;
	setAttr ".ai_aperture_aspect_ratio" 0.55882352590560913;
	setAttr ".ai_edof" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "aiSkyDomeLight1";
	rename -uid "FAAA7D07-4895-4FA5-20AD-659C5DA2D034";
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "9EAB0A12-4D38-10B5-4AD1-C18FFFFEB950";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6BCDE684-4F03-5BEA-2729-30929D702D7F";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1B917A81-49FB-D28F-41D6-E4BF86175494";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D82ED16C-444F-B222-D049-07901BB70D1A";
createNode displayLayerManager -n "layerManager";
	rename -uid "5CC0FE4B-4729-BB53-7A7D-D58CC19D6119";
createNode displayLayer -n "defaultLayer";
	rename -uid "A020B37F-44F1-B1CB-A0B4-C5AB4A9EC50B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F34895F7-4774-7C44-E49B-CCBBB02B8790";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CBD6F7BA-496F-3F68-F526-74A7685D056E";
	setAttr ".g" yes;
createNode polyTorus -n "polyTorus1";
	rename -uid "F763274A-44F8-7256-0B1E-AB991DCCA708";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0762A34B-433B-3BC6-A37B-E1AD9530524D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 546\n            -height 700\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 545\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"camera1\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 546\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 546\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 545\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 545\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ttimeControl -e -displaySound 1 -sound Particle_Fever_clip $gPlayBackSlider;\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "AAE1F9F9-4C85-6CDE-D4CD-BBA0BD1718B7";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 555 -ast 1 -aet 1080 ";
	setAttr ".st" 6;
createNode MASH_Waiter -n "MASH1";
	rename -uid "D037F941-4D71-FE7C-5879-10B1E4B1390F";
	addAttr -s false -ci true -h true -sn "instancerMessage" -ln "instancerMessage" 
		-at "message";
	addAttr -s false -ci true -h true -sn "dynamicsMessage" -ln "dynamicsMessage" -at "message";
	setAttr ".inRotPP" -type "vectorArray" 156 126.58506813791456 281.91971478324899
		 -251.3714599609375 47.257417053608606 72.174442938656981 -239.89260864257813 16.781312317280481
		 72.174442938656981 -235.63128662109375 -154.55329517303406 177.04708209677193 -18.6846923828125 124.35970153448815
		 132.35464995942135 159.72613525390625 524.5898463321945 434.10475747908583 339.3118896484375 353.24078437155464
		 288.89324110460853 -86.934326171875 423.7464477478224 328.19865599916722 16.63604736328125 131.35139702527277
		 434.05086167897201 345.7056884765625 258.18925853790347 177.04708209677193 23.97015380859375 344.8296062260606
		 277.29461640921352 -22.486358642578125 65.189303582783339 328.19865599916722 -173.29405212402344 52.165192932514856
		 72.174442938656981 -356.87957763671875 -232.27166526824058 23.657253410013492 -190.84739685058594 -112.44373706756531
		 177.04708209677193 -234.89065551757813 118.39683379703024 377.54215072165516 132.34869384765625 92.200061029072401
		 328.19865599916722 -103.94970703125 215.07327398720236 72.174442938656981 136.78347778320313 233.36143654874783
		 11.994241580575741 -179.40043640136719 231.13096465640524 377.54215072165516 115.75735473632813 366.909637840063
		 281.91971478324899 221.61627197265625 364.7923447518728 11.994241580575741 -169.03558349609375 101.67892760622084
		 328.19865599916722 -203.850341796875 363.69795837042568 132.35464995942135 -260.17788696289063 244.08909984649719
		 177.04708209677193 -70.709075927734375 155.06822916003017 332.83007069175591 -175.10258483886719 270.1817790776231
		 277.29461640921352 -337.67288208007813 -143.03199606843967 11.994241580575741 -61.59820556640625 -138.81687549529968
		 177.04708209677193 -15.20751953125 297.70122142852847 177.04708209677193 115.91168212890625 -231.53726068076639
		 72.174442938656981 -134.4737548828125 -81.949095999539111 288.89324110460853 -61.626678466796875 507.85583287481006
		 248.01589125994738 -323.50692749023438 -235.83328085847873 11.994241580575741 -26.595489501953125 -175.94825366912781
		 177.04708209677193 266.70306396484375 261.76136804829991 183.002412690044 280.4124755859375 272.25073481602135
		 419.59374042652985 -52.053009033203125 228.83787867913401 77.111571332203667 -174.65214538574219 512.18574636277935
		 277.29461640921352 -101.22402954101563 608.85530202684185 277.29461640921352 151.690673828125 203.71986693727553
		 328.19865599916722 212.25579833984375 39.900073967590941 177.04708209677193 176.17938232421875 367.62993236602847
		 177.04708209677193 -80.45458984375 557.72453612672871 328.19865599916722 14.421173095703125 514.11570586734274
		 377.54215072165516 19.400909423828125 17.268693121787702 0.33124663806803689 92.48626708984375 548.03630866989681
		 405.38148006423029 291.4017333984375 41.915039312948352 183.002412690044 126.80874633789063 444.41969603883803
		 328.19865599916722 48.820281982421875 196.88128790321798 72.174442938656981 84.57574462890625 505.12077709259097
		 177.04708209677193 -357.78506469726563 134.85434875248808 426.88564544414311 -89.796783447265625 254.17437637509744
		 434.30423924454084 -328.26422119140625 134.72699102821798 72.174442938656981 -33.300048828125 29.753391228333129
		 177.04708209677193 107.58309936523438 343.79471349861444 40.335207797694615 81.510650634765625 98.127395880331164
		 183.002412690044 228.97955322265625 0.67744558152932655 277.29461640921352 -325.56512451171875 476.2864868103224
		 328.19865599916722 223.27508544921875 148.51881519210019 0.33124663806803689 92.898712158203125 336.43626781524722
		 177.04708209677193 49.168121337890625 -4.0034621328927944 11.994241580575741 -274.91378784179688 317.35487212710837
		 377.54215072165516 90.657806396484375 257.58087197092237 281.91971478324899 -14.358428955078125 134.19096535734158
		 11.994241580575741 303.14227294921875 443.8004784683651 419.59374042652985 -42.027008056640625 -207.35134759482889
		 72.174442938656981 304.38592529296875 -149.25711395673275 141.63315365150024 68.432708740234375 -171.33398309287577
		 72.174442938656981 225.17962646484375 478.68756142404737 281.91971478324899 292.6290283203125 11.316363519306776
		 328.19865599916722 -220.45169067382813 126.98919805946798 72.174442938656981 -160.23951721191406 -50.757551818461707
		 72.174442938656981 -84.317840576171875 460.07738109649722 177.04708209677193 -218.80064392089844 84.895599754125499
		 281.91971478324899 -255.05177307128906 -55.926454722846159 248.01589125994738 -168.67257690429688 -98.527739196391394
		 72.174442938656981 313.16278076171875 485.4774804214901 419.59374042652985 -308.47991943359375 61.797974021703624
		 281.91971478324899 297.427490234375 122.24595031498808 426.88564544414311 38.24920654296875 234.276825340063
		 281.91971478324899 40.25640869140625 -279.34216180381327 72.174442938656981 47.55535888671875 446.59618415817806
		 405.38148006423029 -293.04251098632813 -22.578856139750769 72.174442938656981 252.6583251953125 358.22966115770123
		 277.29461640921352 35.00518798828125 442.7301659683651 419.59374042652985 290.52813720703125 442.55052032046774
		 377.54215072165516 137.39794921875 -56.089979955580048 277.29461640921352 340.8277587890625 240.56730983147776
		 77.111571332203667 322.70391845703125 214.75158819618673 72.174442938656981 -82.528533935546875 287.55138011993472
		 177.04708209677193 145.49911499023438 688.48264922671774 377.54215072165516 147.7791748046875 400.37572094024722
		 177.04708209677193 -255.70599365234375 302.68382373702207 0.33124663806803689 -132.49459838867188 680.92081603764427
		 426.88564544414311 -13.17462158203125 469.52104033999899 377.54215072165516 -226.93109130859375 -84.583599128112184
		 177.04708209677193 -210.48284912109375 -19.447127190712298 0.33124663806803689 -286.32278442382813 -43.203029670104371
		 177.04708209677193 -321.96002197265625 333.46691169724056 405.38148006423029 -276.82192993164063 143.40142486162662
		 141.63315365150024 -301.1092529296875 199.7012638166255 281.91971478324899 332.50445556640625 477.5445720463731
		 277.29461640921352 -21.5914306640625 -227.69175558992404 11.994241580575741 -41.166717529296875 6.7192851811387015
		 277.29461640921352 168.8006591796875 -94.860030004408173 277.29461640921352 81.592041015625 -59.466992193583849
		 328.19865599916722 69.3284912109375 294.54429738816998 277.29461640921352 173.22314453125 48.634678930746645
		 333.95212326425104 302.1754150390625 456.89595084471671 380.83701687645402 -20.60919189453125 701.28818664311302
		 426.88564544414311 -159.20767211914063 311.30467601837222 177.04708209677193 349.8946533203125 -117.65198902069031
		 177.04708209677193 326.93048095703125 279.06077906975901 77.111571332203667 -273.7080078125 -108.71790948447733
		 72.174442938656981 274.0611572265625 396.92188211413173 332.83007069175591 59.894378662109375 -97.148082770690309
		 177.04708209677193 89.022674560546875 -221.09269634908637 0.00025264393467318714
		 194.177490234375 40.492923699036254 177.04708209677193 -346.13412475585938 519.07402416290347
		 177.04708209677193 7.441436767578125 -79.913526830158418 11.994241580575741 314.65948486328125 679.26841582828024
		 377.54215072165516 191.61444091796875 -335.19589012175618 23.657253410013492 -181.03440856933594 -56.021788268657019
		 72.174442938656981 345.5716552734375 534.5579997807481 277.29461640921352 306.0633544921875 210.20729396233713
		 77.111571332203667 139.55010986328125 210.89697393837423 72.174442938656981 352.8485107421875 204.92055126251282
		 177.04708209677193 -353.6021728515625 289.87345733218649 377.54215072165516 54.8759765625 592.48942135577977
		 354.39864181167025 -235.75558471679688 454.81461944156149 377.54215072165516 -289.076416015625 600.25249022829121
		 328.19865599916722 -343.68014526367188 -295.27044153068243 40.335207797694615 -26.33013916015625 335.4070743635005
		 281.91971478324899 260.41656494140625 -107.98495355186014 72.174442938656981 146.09521484375 380.46391408738873
		 277.29461640921352 109.87530517578125 72.474842033997191 177.04708209677193 251.74713134765625 300.77751320890405
		 11.994241580575741 96.103668212890625 11.638169458482452 277.29461640921352 318.377197265625 204.37877269805969
		 177.04708209677193 -329.13348388671875 452.38566967071597 177.04708209677193 -252.38002014160156 11.739884528037704
		 0.33124663806803689 101.70465087890625 -39.476179906751923 277.29461640921352 171.4232177734375 468.32381286261318
		 132.35464995942135 -304.9869384765625 200.91311773720236 72.174442938656981 -78.616424560546875 178.39317432295957
		 0.33124663806803689 -48.803558349609375 22.644822272178327 0.33124663806803689 -190.72950744628906 81.784913391499231
		 72.174442938656981 -193.94670104980469 442.97827239842866 140.53184914999028 -6.7034912109375 -63.574889886270398
		 183.002412690044 164.18841552734375 -65.794185675963746 177.04708209677193 48.84735107421875 68.045509886459683
		 408.38142073838696 -227.54812622070313 -161.58341954935634 183.002412690044 169.01458740234375 697.75492705874899
		 377.54215072165516 -2.7679443359375 431.27533050389741 140.53184914999028 -309.50576782226563 199.45942800340433
		 277.29461640921352 -0.42767333984375 ;
	setAttr ".cacheIdPP" -type "vectorArray" 0 ;
	setAttr ".cacheVisibilityPP" -type "vectorArray" 0 ;
	setAttr ".initSt" -type "vectorArray" 0 ;
	setAttr ".filename" -type "string" "0";
createNode MASH_Transform -n "MASH1_Transform";
	rename -uid "DD7DF616-4081-B886-F757-AAA9AB78511D";
	setAttr ".fArray" -type "vectorArray" 0 ;
	setAttr ".positionAmount" -type "float3" -20 15 -5 ;
	setAttr ".enablePointScale" yes;
createNode MASH_Random -n "MASH1_Random";
	rename -uid "5CA5EE33-4882-0103-EB54-3D9F5A3C3AA4";
	setAttr ".fArray" -type "vectorArray" 0 ;
	setAttr ".rotationX" 360;
	setAttr ".rotationZ" 360;
	setAttr -av ".seed" 20;
createNode animCurveTU -n "MASH1_Random_minNumberZ";
	rename -uid "873F1951-4B5A-9F8E-4800-CC9EF509E561";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Random_scaleZ";
	rename -uid "BC93B7D8-4EA6-7238-644A-AD80AC58F99E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Random_rotationZ";
	rename -uid "11C7198A-4E4C-CE75-BAA3-7DB5956E04CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 48 360;
createNode animCurveTU -n "MASH1_Random_positionY";
	rename -uid "B53F7173-4AA6-D619-C177-50A28E3F3CDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10 240 29.313453536754508;
createNode animCurveTU -n "MASH1_Random_maxNumberX";
	rename -uid "3296DB1C-402A-05AB-28F9-D6BD6703312A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Random_minNumberY";
	rename -uid "2C344C78-41DC-FCEB-26DB-78BC222E60E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Random_positionX";
	rename -uid "E9E01284-47A4-A426-F2C2-E89DA36B18F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 2.8191490173339844 74 20 240 100 480 2.8190000057220459;
createNode animCurveTU -n "MASH1_Random_randomSeed";
	rename -uid "68E0BED9-4F3E-1A24-442D-C29053E26A07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 18;
createNode animCurveTU -n "MASH1_Random_rotationY";
	rename -uid "A0D21D13-4715-A045-76E3-9F8E1F18A397";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Random_maxNumberZ";
	rename -uid "40C6220D-49E4-396C-33BE-79B3E6796F1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Random_positionZ";
	rename -uid "01667583-42F9-9C1A-432E-65BF6008ECCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 8.5638294219970703 240 50;
createNode animCurveTU -n "MASH1_Random_maxNumberY";
	rename -uid "A073EEFA-4C05-9121-9A45-DAB37D8A8C29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Random_enableStrengthX";
	rename -uid "47DFC910-44B3-695B-3741-6F9D67CC54F8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "MASH1_Random_minNumberX";
	rename -uid "CEB13BDD-498D-9A61-77C5-F084B35DA40F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Random_minNumber";
	rename -uid "5BAC34FB-4798-5137-85D7-F18E11676B1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -10;
createNode animCurveTU -n "MASH1_Random_maxNumber";
	rename -uid "7C86FB7C-41A6-F2AE-C056-E984BBC1882C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 10;
createNode animCurveTU -n "MASH1_Random_enableStrengthY";
	rename -uid "FE8A5161-4C0A-73C4-BAE9-7A8116A4BB9B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "MASH1_Random_enableStrengthZ";
	rename -uid "2D7A3833-40EA-10F3-99D2-DB9C200BCA43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "MASH1_Random_rotationX";
	rename -uid "106B1F23-4884-21AC-01DC-7A8FFF7F9ED0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 48 360;
createNode animCurveTU -n "MASH1_Random_scaleX";
	rename -uid "F4B914D2-4F7B-79C4-D4B9-9D9ED0A9ED24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Random_scaleY";
	rename -uid "2278679D-40B7-F8D3-487B-15B87C3C8750";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Random_StepEnvelope";
	rename -uid "B51E7507-4A17-ED03-76BB-7EB3046E3A8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Random_mColourB";
	rename -uid "C2CEE81C-4CDF-1A13-92C8-8B89DDFC4FAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Random_Envelope";
	rename -uid "E6BEC9DC-4086-26D9-E472-07AE78AEFD1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Random_mColourG";
	rename -uid "EF1DB7BE-4982-A203-3165-6F9F2F7F139A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Random_mColourR";
	rename -uid "8627CE5A-4571-CB1C-A6FB-E1A914EA7118";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Random_randEnvelope";
	rename -uid "3F0B0F2D-470F-594B-5950-DFB3D019439A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode MASH_Replicator -n "MASH1_Replicator";
	rename -uid "6A761055-46C2-9F31-CC3C-6588708EC292";
	setAttr ".fArray" -type "vectorArray" 0 ;
	setAttr ".replicants" 12;
	setAttr -s 2 ".positionRamp[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".scaleRamp[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".rotationRamp[0:1]"  0 0 1 1 1 1;
createNode MASH_Distribute -n "MASH1_Distribute";
	rename -uid "31E176CC-4BC4-5CA7-2543-AEA41929A908";
	setAttr ".mapDirection" 4;
	setAttr ".pointCount" 12;
	setAttr ".fArray" -type "vectorArray" 0 ;
	setAttr ".inPPP" -type "vectorArray" 0 ;
	setAttr -s 3 ".scaleRamp[0:2]"  0 0 1 0 0 1 1 1 1;
	setAttr -s 3 ".rotationRamp[0:2]"  0 0 1 0 0 1 1 1 1;
	setAttr -s 3 ".bRmp[0:2]"  0 0 1 0 0 1 1 1 1;
	setAttr ".bRmpX[0]"  0 1 1;
	setAttr ".bRmpY[0]"  0 1 1;
	setAttr ".bRmpZ[0]"  0 1 1;
	setAttr ".ampX" 47.368419647216797;
createNode MASH_Repro -n "MASH1_Repro";
	rename -uid "9EA256F9-423B-4718-1785-4B87C9CF3914";
	addAttr -s false -ci true -h true -sn "instancerMessage" -ln "instancerMessage" 
		-at "message";
	addAttr -s false -ci true -h true -sn "dynamicsMessage" -ln "dynamicsMessage" -at "message";
	setAttr ".numberOfObjects" 1;
	setAttr ".instancedGroup[0].inMesh[0].inShGroupId[0]"  -1;
createNode animCurveTU -n "MASH1_Transform1_positionAmount2";
	rename -uid "A79D8D02-42AF-8204-6B75-59BF38DBDECF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Transform1_positionAmount1";
	rename -uid "781B3AC2-4747-15A4-2237-6F850E39E108";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Transform1_rotationAmount1";
	rename -uid "AEE0E756-402D-59B5-709F-B786B1F38D74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Transform1_rotationAmount0";
	rename -uid "52BE12FB-470A-A164-6EDE-E88EF898A0FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Transform1_positionAmount0";
	rename -uid "E9582EFA-408E-E3E3-A9E8-98ACBAB61B0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Transform1_scaleAmount2";
	rename -uid "5EF639C8-4684-0415-784A-05A5D841AD87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Transform1_rotationAmount2";
	rename -uid "B1E14C3B-49EF-F962-CA98-03B69317578E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "MASH1_Transform1_enableStrengthZ";
	rename -uid "7732EAD9-4CF9-4DF0-DEFC-F3B5F355F318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "MASH1_Transform1_enableStrengthY";
	rename -uid "C2EFB8D0-449B-130E-3E0F-2CBE7C0C6F2D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "MASH1_Transform1_mColourG";
	rename -uid "8AA10324-4EDF-8348-0718-C68E43B23295";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Transform1_enableStrengthX";
	rename -uid "845E8F8A-405E-002A-C997-C9AD7A17904A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "MASH1_Transform1_Envelope";
	rename -uid "8AF0108F-45DA-B081-44E5-289F950CDA50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Transform1_StepEnvelope";
	rename -uid "1E7F9ED7-4895-8F91-C26E-60A02685280E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Transform1_mColourR";
	rename -uid "E5638E37-4D8D-67F7-1826-A8989162272D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Transform1_mColourB";
	rename -uid "A9B4F2C1-4223-D3C9-4560-D9BF44F5627E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Transform1_randEnvelope";
	rename -uid "AAABB7AB-4CE1-E5A6-0C06-0D85F9BDC292";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Transform1_scaleAmount0";
	rename -uid "4497B630-4600-DF01-6BDD-448769909A4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTT -n "MASH1_Transform1_time";
	rename -uid "B690DA14-4539-B0EC-34D7-ECBFB6C78E27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "MASH1_Transform1_scaleAmount1";
	rename -uid "737370B7-4BBF-935E-325D-F2B1059FEC27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode MASH_ChannelRandom -n "MASH_ChannelRandom1";
	rename -uid "09DD5B6B-4796-F92F-AF61-C3A76D8C6BE4";
	setAttr ".startValue" 0;
	setAttr ".varianceVectorMin" -type "float3" 1 0 1 ;
	setAttr ".varianceMin" 1;
	setAttr ".varianceVectorMax" -type "float3" 10 0 10 ;
	setAttr ".varianceMax" 20;
	setAttr ".randomSeed" 12;
	setAttr ".dynamicsChannelName" 10;
createNode MASH_ChannelRandom -n "MASH_ChannelRandom2";
	rename -uid "A28FF448-431F-6876-45B5-7C91E605F64F";
	setAttr ".varianceVectorMin" -type "float3" 1 0 1 ;
	setAttr ".varianceVectorMax" -type "float3" 10 0 10 ;
	setAttr ".dynamicsChannelName" 10;
createNode MASH_Python -n "MASH1_Python";
	rename -uid "B16263D8-4224-E1EE-8F05-E4AA287B4789";
	setAttr ".pyScript" -type "string" "import openMASH\nimport random\n \n#initialise the MASH network data\nmd = openMASH.MASHData(thisNode)\n \n#this is how to get the frame number\nframe = md.getFrame()\n#and this gets the number of objects in the network\ncount = md.count()\nrandom.seed(0)\n#add the index to the Y position\nfor i in range(count):\n    multiplier = random.randint(0,6)\n    rot = md.outRotation[i].y + 45*multiplier\n    md.outRotation[i].y=rot\n \n#tell MASH to write the network data\nmd.setData()";
	setAttr ".enable" no;
createNode MASH_Offset -n "MASH1_Offset";
	rename -uid "13109A2A-46B5-7620-E7D4-9CAF76FD2A53";
	setAttr ".mc" -type "float3" 0.66233766 0.66233766 0.66233766 ;
	setAttr ".randEnvelope" 0.59340661764144897;
	setAttr ".fArray" -type "vectorArray" 0 ;
	setAttr ".rotationOffset" -type "double3" 900 990.00000000000011 0 ;
createNode animCurveTA -n "MASH1_Offset_rotateOffsetZ";
	rename -uid "4EC0F47F-4345-922A-80FF-F2B915FD11C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode polyCube -n "polyCube1";
	rename -uid "78204C88-4C4A-90A1-C82C-989B8AB91116";
	setAttr ".sw" 4;
	setAttr ".sh" 4;
	setAttr ".sd" 4;
	setAttr ".cuv" 4;
createNode polyExtrudeVertex -n "polyExtrudeVertex1";
	rename -uid "EB678E13-4C72-0C59-59B0-97AEC6C58FF4";
	setAttr ".ics" -type "componentList" 6 "vtx[12]" "vtx[32]" "vtx[52]" "vtx[72]" "vtx[84]" "vtx[93]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 2 0 0 0 0 2 0 0 4.9602808381651222 0 1;
	setAttr ".l" 0.75;
	setAttr ".w" 2;
	setAttr ".d" 2;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "CED210DD-4FD2-AFB4-B1A1-F0B81FB2A5BD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 35 "e[0:9]" "e[11:25]" "e[27:41]" "e[43:57]" "e[59:75]" "e[77:95]" "e[97:115]" "e[117:135]" "e[137:149]" "e[151:162]" "e[164:173]" "e[175:186]" "e[188:215]" "e[217:218]" "e[221:222]" "e[225:226]" "e[229:230]" "e[234:235]" "e[237:238]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]" "e[259]" "e[261]" "e[263]" "e[265]" "e[267]" "e[269]" "e[271:287]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 2 0 0 0 0 2 0 0 4.9602808381651222 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.8;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "F742E300-4658-DC9B-19CB-EF90C09937EC";
	setAttr ".ics" -type "componentList" 1 "f[368]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 2 0 0 0 0 2 0 0 4.9602808381651222 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.94043583 5.7872033 -0.94043589 ;
	setAttr ".rs" 38337;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 5.7276392008398354 -1 ;
	setAttr ".cbx" -type "double3" -0.88087165355682373 5.8467674280737221 -0.88087171316146851 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "F10F9D9A-44B7-4C3E-611E-02AE1FE59FB6";
	setAttr ".uopa" yes;
	setAttr -s 326 ".tk";
	setAttr ".tk[0]" -type "float3" 0 2.7939677e-08 -0.060226325 ;
	setAttr ".tk[1]" -type "float3" 0 -0.074050255 0 ;
	setAttr ".tk[2]" -type "float3" 1.8626451e-09 2.9802322e-08 0.061979648 ;
	setAttr ".tk[3]" -type "float3" -1.1175871e-08 0.062416997 -9.3132257e-10 ;
	setAttr ".tk[4]" -type "float3" -0.060412541 2.7939677e-08 0 ;
	setAttr ".tk[5]" -type "float3" 0.064564511 -4.4703484e-08 0 ;
	setAttr ".tk[6]" -type "float3" 0 -2.8521754e-09 5.8207661e-11 ;
	setAttr ".tk[7]" -type "float3" -2.9802322e-08 -7.9162419e-08 -9.3132257e-10 ;
	setAttr ".tk[8]" -type "float3" 0 -2.3283064e-09 -1.3969839e-09 ;
	setAttr ".tk[9]" -type "float3" -2.2351742e-08 -5.1222742e-08 6.519258e-09 ;
	setAttr ".tk[10]" -type "float3" 7.4505806e-09 1.8626451e-09 0 ;
	setAttr ".tk[11]" -type "float3" -1.4901161e-08 7.7998266e-09 2.9453076e-08 ;
	setAttr ".tk[12]" -type "float3" 2.9802322e-08 -8.9406967e-08 -2.9802322e-08 ;
	setAttr ".tk[13]" -type "float3" -2.2351742e-08 9.3132257e-10 3.632158e-08 ;
	setAttr ".tk[14]" -type "float3" 1.4901161e-07 8.3819032e-09 -8.3819032e-09 ;
	setAttr ".tk[15]" -type "float3" 0 2.2351742e-08 -1.4901161e-07 ;
	setAttr ".tk[16]" -type "float3" 7.4505806e-09 -5.9662852e-08 -5.9546437e-08 ;
	setAttr ".tk[17]" -type "float3" -1.4901161e-08 1.5832484e-08 2.8871e-08 ;
	setAttr ".tk[18]" -type "float3" -2.9802322e-08 -5.8207661e-08 -6.1001629e-08 ;
	setAttr ".tk[19]" -type "float3" -2.2351742e-08 1.5832484e-08 -1.4249235e-07 ;
	setAttr ".tk[20]" -type "float3" 7.4505806e-09 0 -1.4901161e-07 ;
	setAttr ".tk[21]" -type "float3" 0 -4.4703484e-08 -5.9604645e-08 ;
	setAttr ".tk[22]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".tk[23]" -type "float3" -2.9802322e-08 -4.3772161e-08 -6.0535967e-08 ;
	setAttr ".tk[24]" -type "float3" 4.4703484e-08 0 -1.4901161e-07 ;
	setAttr ".tk[25]" -type "float3" -1.4901161e-08 -4.4703484e-08 -5.9604645e-08 ;
	setAttr ".tk[26]" -type "float3" 0 -8.9465175e-08 -5.9546437e-08 ;
	setAttr ".tk[27]" -type "float3" -1.4901161e-08 9.1269612e-08 -1.8626451e-09 ;
	setAttr ".tk[28]" -type "float3" 0 -9.3132257e-08 -6.3329935e-08 ;
	setAttr ".tk[29]" -type "float3" 0 -5.9604645e-08 -5.2154064e-08 ;
	setAttr ".tk[30]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".tk[31]" -type "float3" 7.4505806e-09 9.033829e-08 -1.8626451e-09 ;
	setAttr ".tk[32]" -type "float3" 1.4901161e-08 2.4586916e-07 4.4703484e-08 ;
	setAttr ".tk[33]" -type "float3" -1.4901161e-08 5.9604645e-08 1.4901161e-08 ;
	setAttr ".tk[34]" -type "float3" 1.6391277e-07 1.4901161e-08 1.4901161e-08 ;
	setAttr ".tk[35]" -type "float3" 1.4901161e-08 -4.4703484e-08 -5.9604645e-08 ;
	setAttr ".tk[36]" -type "float3" 0 -1.0058284e-07 -5.9604645e-08 ;
	setAttr ".tk[37]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[38]" -type "float3" -1.1920929e-07 -1.4901161e-07 -5.9604645e-08 ;
	setAttr ".tk[39]" -type "float3" 0 -2.9802322e-08 -5.9604645e-08 ;
	setAttr ".tk[40]" -type "float3" 2.9802322e-08 0 -1.4901161e-07 ;
	setAttr ".tk[41]" -type "float3" 1.4901161e-08 -4.4703484e-08 -5.9604645e-08 ;
	setAttr ".tk[42]" -type "float3" 2.9802322e-08 0 1.4901161e-08 ;
	setAttr ".tk[43]" -type "float3" 2.9802322e-08 -2.9802322e-08 -5.9604645e-08 ;
	setAttr ".tk[44]" -type "float3" 1.3411045e-07 0 -1.4901161e-07 ;
	setAttr ".tk[45]" -type "float3" 0 2.2351742e-08 -1.4901161e-07 ;
	setAttr ".tk[46]" -type "float3" 1.4901161e-08 -7.0780516e-08 -0.060226385 ;
	setAttr ".tk[47]" -type "float3" 0 0 -0.060226295 ;
	setAttr ".tk[48]" -type "float3" -1.0430813e-07 -1.1920929e-07 -6.7055225e-08 ;
	setAttr ".tk[49]" -type "float3" 2.9802322e-08 2.9802322e-08 -1.5646219e-07 ;
	setAttr ".tk[50]" -type "float3" -1.4901161e-08 1.8626451e-09 0 ;
	setAttr ".tk[51]" -type "float3" 0 8.3819032e-09 2.7939677e-08 ;
	setAttr ".tk[52]" -type "float3" 2.9802322e-08 -8.1956387e-08 -4.4703484e-08 ;
	setAttr ".tk[53]" -type "float3" 0 -2.9802322e-08 4.4703484e-08 ;
	setAttr ".tk[54]" -type "float3" 1.6391277e-07 1.4901161e-08 -4.4703484e-08 ;
	setAttr ".tk[55]" -type "float3" 0 -4.4703484e-08 0 ;
	setAttr ".tk[56]" -type "float3" 0 -2.8521754e-09 5.8207661e-11 ;
	setAttr ".tk[57]" -type "float3" -1.4901161e-08 -7.8231096e-08 -1.8626451e-09 ;
	setAttr ".tk[58]" -type "float3" -1.4901161e-08 -1.1175871e-08 -3.7252903e-09 ;
	setAttr ".tk[59]" -type "float3" -1.4901161e-08 -5.9604645e-08 7.4505806e-09 ;
	setAttr ".tk[60]" -type "float3" 1.4901161e-08 2.7939677e-08 0 ;
	setAttr ".tk[61]" -type "float3" 1.4901161e-08 -5.2154064e-08 0 ;
	setAttr ".tk[62]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".tk[63]" -type "float3" -7.4505806e-09 -5.1222742e-08 -9.3132257e-10 ;
	setAttr ".tk[64]" -type "float3" 3.7252903e-08 2.7939677e-08 0 ;
	setAttr ".tk[65]" -type "float3" 0 -5.2154064e-08 0 ;
	setAttr ".tk[66]" -type "float3" 2.9802322e-08 -5.8207661e-11 5.8207661e-11 ;
	setAttr ".tk[67]" -type "float3" 0 -4.3772161e-08 -9.3132257e-10 ;
	setAttr ".tk[68]" -type "float3" -1.4901161e-08 1.3969839e-09 -1.3969839e-09 ;
	setAttr ".tk[69]" -type "float3" -2.9802322e-08 -5.8673322e-08 6.519258e-09 ;
	setAttr ".tk[70]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".tk[71]" -type "float3" -1.4901161e-08 -4.4354238e-08 -3.4924597e-10 ;
	setAttr ".tk[72]" -type "float3" 2.9802322e-08 -7.4505806e-09 0 ;
	setAttr ".tk[73]" -type "float3" -2.9802322e-08 -5.1222742e-08 6.519258e-09 ;
	setAttr ".tk[74]" -type "float3" 1.4901161e-07 3.8184226e-08 -8.3819032e-09 ;
	setAttr ".tk[75]" -type "float3" 0 -5.2154064e-08 0 ;
	setAttr ".tk[76]" -type "float3" 0 -5.8207661e-11 5.8207661e-11 ;
	setAttr ".tk[77]" -type "float3" -7.4505806e-09 -4.3772161e-08 -9.3132257e-10 ;
	setAttr ".tk[78]" -type "float3" -7.4505806e-09 1.3969839e-09 -1.3969839e-09 ;
	setAttr ".tk[79]" -type "float3" -2.9802322e-08 -5.8673322e-08 6.519258e-09 ;
	setAttr ".tk[80]" -type "float3" -4.4703484e-08 -1.1175871e-08 3.7252903e-09 ;
	setAttr ".tk[81]" -type "float3" -2.2351742e-08 -8.6612999e-08 1.1175871e-08 ;
	setAttr ".tk[82]" -type "float3" -5.2154064e-08 -6.519258e-09 6.519258e-09 ;
	setAttr ".tk[83]" -type "float3" 7.4505806e-09 -2.9802322e-08 4.4703484e-08 ;
	setAttr ".tk[84]" -type "float3" -3.6507845e-07 -8.1956387e-08 -3.7252903e-08 ;
	setAttr ".tk[85]" -type "float3" -2.9802322e-08 -4.6566129e-09 4.0978193e-08 ;
	setAttr ".tk[86]" -type "float3" -1.3411045e-07 -1.1920929e-07 -2.9802322e-08 ;
	setAttr ".tk[87]" -type "float3" 0 -2.9802322e-08 4.4703484e-08 ;
	setAttr ".tk[88]" -type "float3" -5.9604645e-08 -7.0780516e-08 -5.5879354e-08 ;
	setAttr ".tk[89]" -type "float3" 0 -2.7939677e-09 0 ;
	setAttr ".tk[90]" -type "float3" 0 -8.0093741e-08 0 ;
	setAttr ".tk[91]" -type "float3" -1.4901161e-08 -2.7939677e-09 0 ;
	setAttr ".tk[92]" -type "float3" 0 7.4505806e-09 2.9802322e-08 ;
	setAttr ".tk[93]" -type "float3" 0 -8.9406967e-08 -2.9802322e-08 ;
	setAttr ".tk[94]" -type "float3" 0 7.4505806e-09 2.9802322e-08 ;
	setAttr ".tk[95]" -type "float3" 0 -5.9604645e-08 -5.9604645e-08 ;
	setAttr ".tk[96]" -type "float3" 0 1.4901161e-08 2.9802322e-08 ;
	setAttr ".tk[97]" -type "float3" 7.4505806e-09 -5.9604645e-08 -5.9604645e-08 ;
	setAttr ".tk[99]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[101]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[104]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[106]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[107]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[110]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[112]" -type "float3" 0 -0.074050203 0 ;
	setAttr ".tk[113]" -type "float3" 0 -0.074050203 0 ;
	setAttr ".tk[115]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[116]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[118]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[119]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[124]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[126]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[127]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[129]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[135]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[138]" -type "float3" 0 -0.056756705 -2.2351742e-08 ;
	setAttr ".tk[139]" -type "float3" 0 -0.056756705 -2.2351742e-08 ;
	setAttr ".tk[140]" -type "float3" 0 -0.056756705 -2.2351742e-08 ;
	setAttr ".tk[143]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[144]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[149]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[150]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[157]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[163]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[165]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[167]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[170]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[172]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[173]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[176]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[178]" -type "float3" 0 0 0.061979648 ;
	setAttr ".tk[179]" -type "float3" 0 0 0.061979648 ;
	setAttr ".tk[181]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[182]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[184]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[185]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[190]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[192]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[193]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[195]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[201]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[209]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[210]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[215]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[216]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[223]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[226]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[227]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[231]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[233]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[236]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[242]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[243]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[244]" -type "float3" -1.4901161e-08 0.062417056 0 ;
	setAttr ".tk[245]" -type "float3" 0 0.062417056 0 ;
	setAttr ".tk[248]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[249]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[256]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[258]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[259]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[264]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[265]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[267]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[270]" -type "float3" -7.4505806e-09 0 -7.4505806e-09 ;
	setAttr ".tk[271]" -type "float3" -1.4901161e-08 0 -7.4505806e-09 ;
	setAttr ".tk[272]" -type "float3" 0 0 -0.060226325 ;
	setAttr ".tk[273]" -type "float3" 0 0 -0.060226325 ;
	setAttr ".tk[274]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[275]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[276]" -type "float3" 0 -0.074050203 0 ;
	setAttr ".tk[277]" -type "float3" 0 -0.074050203 0 ;
	setAttr ".tk[278]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[279]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[280]" -type "float3" 0 0 0.061979648 ;
	setAttr ".tk[281]" -type "float3" 0 0 0.061979648 ;
	setAttr ".tk[282]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[283]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[284]" -type "float3" 0 0.062417056 0 ;
	setAttr ".tk[285]" -type "float3" 0 0.062417056 0 ;
	setAttr ".tk[289]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[290]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[294]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[295]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[296]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[297]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[298]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[299]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[300]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[301]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[305]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[306]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[310]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[311]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[312]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[313]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[317]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[318]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[322]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[323]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[324]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[325]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[326]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[327]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[328]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[329]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[333]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[334]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[338]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[339]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[340]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[341]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[342]" -type "float3" -7.4505806e-09 0 -0.060226325 ;
	setAttr ".tk[343]" -type "float3" 0 0 -0.060226325 ;
	setAttr ".tk[344]" -type "float3" -7.4505806e-09 0 -0.060226325 ;
	setAttr ".tk[345]" -type "float3" 0 0 -0.060226325 ;
	setAttr ".tk[346]" -type "float3" 0 0 -0.060226325 ;
	setAttr ".tk[348]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[349]" -type "float3" -7.4505806e-09 -0.074050203 0 ;
	setAttr ".tk[350]" -type "float3" 0 -0.074050203 0 ;
	setAttr ".tk[351]" -type "float3" -7.4505806e-09 -0.074050203 0 ;
	setAttr ".tk[352]" -type "float3" 0 -0.074050203 0 ;
	setAttr ".tk[353]" -type "float3" 0 -0.074050203 0 ;
	setAttr ".tk[355]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[356]" -type "float3" -7.4505806e-09 0 0.061979648 ;
	setAttr ".tk[357]" -type "float3" 0 0 0.061979648 ;
	setAttr ".tk[358]" -type "float3" -7.4505806e-09 0 0.061979648 ;
	setAttr ".tk[359]" -type "float3" 0 0 0.061979648 ;
	setAttr ".tk[360]" -type "float3" 0 0 0.061979648 ;
	setAttr ".tk[362]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[363]" -type "float3" -7.4505806e-09 0.062417056 0 ;
	setAttr ".tk[364]" -type "float3" 0 0.062417056 0 ;
	setAttr ".tk[365]" -type "float3" -7.4505806e-09 0.062417056 0 ;
	setAttr ".tk[366]" -type "float3" -1.4901161e-08 0.062417056 0 ;
	setAttr ".tk[367]" -type "float3" 0 0.062417056 0 ;
	setAttr ".tk[370]" -type "float3" -7.4505806e-09 0 -0.060226325 ;
	setAttr ".tk[371]" -type "float3" -3.7252903e-09 0 -0.060226325 ;
	setAttr ".tk[372]" -type "float3" -3.7252903e-09 0 -0.060226325 ;
	setAttr ".tk[373]" -type "float3" 0 0 -0.060226325 ;
	setAttr ".tk[374]" -type "float3" 0 0 -0.060226325 ;
	setAttr ".tk[375]" -type "float3" -7.4505806e-09 0 -7.4505806e-09 ;
	setAttr ".tk[376]" -type "float3" -7.4505806e-09 0 -7.4505806e-09 ;
	setAttr ".tk[377]" -type "float3" -7.4505806e-09 -0.074050203 0 ;
	setAttr ".tk[378]" -type "float3" -3.7252903e-09 -0.074050203 0 ;
	setAttr ".tk[379]" -type "float3" -3.7252903e-09 -0.074050203 0 ;
	setAttr ".tk[380]" -type "float3" 0 -0.074050203 0 ;
	setAttr ".tk[381]" -type "float3" 0 -0.074050203 0 ;
	setAttr ".tk[382]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[383]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[384]" -type "float3" -7.4505806e-09 0 0.061979648 ;
	setAttr ".tk[385]" -type "float3" -3.7252903e-09 0 0.061979648 ;
	setAttr ".tk[386]" -type "float3" -3.7252903e-09 0 0.061979648 ;
	setAttr ".tk[387]" -type "float3" 0 0 0.061979648 ;
	setAttr ".tk[388]" -type "float3" 0 0 0.061979648 ;
	setAttr ".tk[389]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[390]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[391]" -type "float3" -3.7252903e-09 0.062417056 0 ;
	setAttr ".tk[392]" -type "float3" -3.7252903e-09 0.062417056 0 ;
	setAttr ".tk[393]" -type "float3" 3.7252903e-09 0.062417056 0 ;
	setAttr ".tk[394]" -type "float3" 0 0.062417056 0 ;
	setAttr ".tk[395]" -type "float3" 7.4505806e-09 0.062417056 0 ;
	setAttr ".tk[396]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[397]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[398]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[399]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[400]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[401]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[402]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[403]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[404]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[405]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[406]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[407]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[408]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[409]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[410]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[411]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[412]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[413]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[414]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[415]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[416]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[417]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[418]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[419]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[420]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[421]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[422]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[423]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[424]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[425]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[426]" -type "float3" -7.4505806e-09 0 -0.060226325 ;
	setAttr ".tk[427]" -type "float3" 0 0 -0.060226325 ;
	setAttr ".tk[428]" -type "float3" -7.4505806e-09 0 -0.060226325 ;
	setAttr ".tk[429]" -type "float3" -3.7252903e-09 0 -0.060226325 ;
	setAttr ".tk[430]" -type "float3" -3.7252903e-09 0 -0.060226325 ;
	setAttr ".tk[431]" -type "float3" -7.4505806e-09 0 -0.060226325 ;
	setAttr ".tk[432]" -type "float3" -7.4505806e-09 -0.074050203 0 ;
	setAttr ".tk[433]" -type "float3" 0 -0.074050203 0 ;
	setAttr ".tk[434]" -type "float3" -7.4505806e-09 -0.074050203 0 ;
	setAttr ".tk[435]" -type "float3" -3.7252903e-09 -0.074050203 0 ;
	setAttr ".tk[436]" -type "float3" -3.7252903e-09 -0.074050203 0 ;
	setAttr ".tk[437]" -type "float3" -7.4505806e-09 -0.074050203 0 ;
	setAttr ".tk[438]" -type "float3" -7.4505806e-09 0 0.061979648 ;
	setAttr ".tk[439]" -type "float3" 0 0 0.061979648 ;
	setAttr ".tk[440]" -type "float3" -7.4505806e-09 0 0.061979648 ;
	setAttr ".tk[441]" -type "float3" -3.7252903e-09 0 0.061979648 ;
	setAttr ".tk[442]" -type "float3" -3.7252903e-09 0 0.061979648 ;
	setAttr ".tk[443]" -type "float3" -7.4505806e-09 0 0.061979648 ;
	setAttr ".tk[444]" -type "float3" -7.4505806e-09 0.062417056 0 ;
	setAttr ".tk[445]" -type "float3" 0 0.062417056 0 ;
	setAttr ".tk[446]" -type "float3" -7.4505806e-09 0.062417056 0 ;
	setAttr ".tk[447]" -type "float3" -3.7252903e-09 0.062417056 0 ;
	setAttr ".tk[448]" -type "float3" 3.7252903e-09 0.062417056 0 ;
	setAttr ".tk[449]" -type "float3" -3.7252903e-09 0.062417056 0 ;
	setAttr ".tk[450]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[451]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[452]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[453]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[454]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[455]" -type "float3" -0.060412571 0 0 ;
	setAttr ".tk[456]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[457]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[458]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[459]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[460]" -type "float3" 0.064564511 0 0 ;
	setAttr ".tk[461]" -type "float3" 0.064564511 0 0 ;
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "51AAFBE3-4064-7D14-7A58-D3942DA998E3";
	setAttr ".base" 1;
	setAttr ".base_color" -type "float3" 0.48199999 0 0.37077042 ;
	setAttr ".specular_roughness" 0;
	setAttr ".specular_anisotropy" 0.5;
	setAttr ".transmission" 0.33962264657020569;
	setAttr ".transmission_depth" 1;
	setAttr ".coat_roughness" 0;
	setAttr ".coat_IOR" 1;
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "94490696-451D-4FE3-336D-0FA413729A21";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "611243C8-404B-76A5-8940-068087684BD2";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "D1D23034-4EC9-73EA-56A8-76B3A95AC7A2";
	setAttr ".version" -type "string" "2.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "C2D7606C-4C42-3FDE-62B7-8F8F87921061";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "9A92241E-4EC3-A9D0-CBEF-55A7272EE45B";
	setAttr ".color_management" 1;
	setAttr ".ai_translator" -type "string" "png";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "97AD69B0-482C-691E-A1F6-319D71EE039C";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode groupId -n "groupId1";
	rename -uid "13C8D0FA-458B-5F93-8C34-A48C3C6E519B";
createNode MASH_Dynamics -n "MASH1_Dynamics";
	rename -uid "4DC9D525-4894-C809-4417-CC94C2266A8F";
	addAttr -s false -ci true -h true -sn "waiterMessage" -ln "waiterMessage" -at "message";
	setAttr ".positionStrength" 9.3406591415405273;
	setAttr ".linearVelocityThreshold" 0.40000000596046448;
createNode MASH_ChannelRandom -n "MASH_ChannelRandom3";
	rename -uid "3B6DBC2A-4CAD-EDF9-F3C5-0FA779536A65";
createNode audio -n "Particle_Fever_clip";
	rename -uid "5B9D2949-47BF-E5CF-727C-F1A7E15E0CCC";
	setAttr ".ef" 1111.5896301020409;
	setAttr ".se" 1111.5896301020409;
	setAttr ".f" -type "string" "C:/Users/chris/Documents/CRCP 1350 Files/CRCP-1350-Files/Animation and Code - Project 4/Particle Fever clip.wav";
createNode animCurveTL -n "camera1_translateX";
	rename -uid "9157CD48-4E17-11F3-BACF-7D86B05A4579";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -706.47530481604781 240 -12.897032357526548
		 305 -52.483947682792646 407 -24.304150741082431 408 13.839656361305012;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[1:4]"  5 18 1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "camera1_translateZ";
	rename -uid "7770187F-4E06-6C96-0F79-899CF4A089FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -28.860358732028775 240 -10.451400715317124
		 305 -9.7699929642905303 407 47.283604168576801 408 13.530827465438922;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "camera1_rotateX";
	rename -uid "3A098BA4-4A29-5B0B-C6F7-D6A7D1E931EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 305 -1.3554880000000809 407 3.3887199999998883
		 408 -39.986896000000385;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[0:3]"  5 18 1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "camera1_rotateZ";
	rename -uid "DA3CFEFB-4F35-CCA4-7E23-3BAB916E5390";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 7.6333312355124402e-14 240 7.6333312355124402e-14
		 305 0 407 2.5089898531256284e-16 408 6.0699241052586926e-15;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "camera1_visibility";
	rename -uid "89812872-4BA1-0404-D560-89B1895E3E09";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  305 1 407 1 408 1;
	setAttr -s 3 ".kit[0:2]"  9 1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTU -n "camera1_scaleX";
	rename -uid "7273CD9F-4A00-58EE-A445-7597733A3C6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  305 1 407 1 408 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "camera1_scaleY";
	rename -uid "4FFE84EC-4CE3-89D2-0AD5-158A344235C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  305 1 407 1 408 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "camera1_scaleZ";
	rename -uid "F3AA13A4-466F-68C9-D231-FA9AD05392B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  305 1 407 1 408 1;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "camera1_rotateY";
	rename -uid "DAB7AEA8-47A0-F048-776C-FBB101064C7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -90 240 -90 305 -89.999999999999986 407 -37.599999999999959
		 408 -58.400000000000894;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[1:4]"  5 18 1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "camera1_translateY";
	rename -uid "826B25B5-40C4-2719-CE26-72BE5B9778F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  408 20.281776404339201;
select -ne :time1;
	setAttr ".o" 248;
	setAttr ".unw" 248;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
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
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "png";
	setAttr ".an" yes;
	setAttr ".ep" 6;
	setAttr ".pff" yes;
select -ne :defaultResolution;
	setAttr ".w" 1024;
	setAttr ".h" 1024;
	setAttr ".pa" 1;
	setAttr ".dar" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTorus1.out" "pTorusShape1.i";
connectAttr "aiStandardSurface1SG.mwc" "MASH1_ReproMeshShape.iog.og[0].gco";
connectAttr "groupId1.id" "MASH1_ReproMeshShape.iog.og[0].gid";
connectAttr "MASH1_Repro.out" "MASH1_ReproMeshShape.i";
connectAttr "polyExtrudeFace1.out" "pCubeShape1.i";
connectAttr ":time1.o" "MASH1_BulletSolverShape.time";
connectAttr "MASH1_Dynamics.enable" "MASH1_BulletSolverShape.inputNetworks[0].mashEnable"
		;
connectAttr "MASH1_Dynamics.bounce" "MASH1_BulletSolverShape.inputNetworks[0].mashBounce"
		;
connectAttr "MASH1_Dynamics.friction" "MASH1_BulletSolverShape.inputNetworks[0].mashFriction"
		;
connectAttr "MASH1_Dynamics.damping" "MASH1_BulletSolverShape.inputNetworks[0].mashDamping"
		;
connectAttr "MASH1_Dynamics.rollingFriction" "MASH1_BulletSolverShape.inputNetworks[0].mashRollingFriction"
		;
connectAttr "MASH1_Dynamics.rollingDamping" "MASH1_BulletSolverShape.inputNetworks[0].mashRollingDamping"
		;
connectAttr "MASH1_Dynamics.mass" "MASH1_BulletSolverShape.inputNetworks[0].mashMass"
		;
connectAttr "MASH1_Dynamics.positionStrength" "MASH1_BulletSolverShape.inputNetworks[0].mashPositionStrength"
		;
connectAttr "MASH1_Dynamics.rotationalStrength" "MASH1_BulletSolverShape.inputNetworks[0].mashRotationalStrength"
		;
connectAttr "MASH1_Dynamics.collisionObjectScale" "MASH1_BulletSolverShape.inputNetworks[0].mashCollisionObjectScale"
		;
connectAttr "MASH1_Dynamics.collisionShapeLength" "MASH1_BulletSolverShape.inputNetworks[0].mashCollisionShapeLength"
		;
connectAttr "MASH1_Dynamics.collisionShapeAxis" "MASH1_BulletSolverShape.inputNetworks[0].mashCollisionShapeAxis"
		;
connectAttr "MASH1_Dynamics.maxVelocity" "MASH1_BulletSolverShape.inputNetworks[0].mashMaxVelocity"
		;
connectAttr "MASH1_Dynamics.maxAngularVelocity" "MASH1_BulletSolverShape.inputNetworks[0].mashAngularVelocity"
		;
connectAttr "MASH1_Dynamics.collisionShape" "MASH1_BulletSolverShape.inputNetworks[0].mashCollisionShape"
		;
connectAttr "MASH1_Dynamics.initiallySleeping" "MASH1_BulletSolverShape.inputNetworks[0].mashInitiallySleeping"
		;
connectAttr "MASH1_Dynamics.initialVelocity" "MASH1_BulletSolverShape.inputNetworks[0].mashInitialVelocity"
		;
connectAttr "MASH1_Dynamics.initialRotationalVelocity" "MASH1_BulletSolverShape.inputNetworks[0].mashInitialRotationalVelocity"
		;
connectAttr "MASH1_Dynamics.emitFromCollisions" "MASH1_BulletSolverShape.inputNetworks[0].mashEmitFromCollisions"
		;
connectAttr "MASH1_Dynamics.collisionDistanceThreshold" "MASH1_BulletSolverShape.inputNetworks[0].mashCollisionDistanceThreshold"
		;
connectAttr "MASH1_Dynamics.ignoreInvisible" "MASH1_BulletSolverShape.inputNetworks[0].mashIgnoreInvisible"
		;
connectAttr "MASH1_Dynamics.autoFit" "MASH1_BulletSolverShape.inputNetworks[0].mashAutoFit"
		;
connectAttr "MASH1_Dynamics.linearVelocityThreshold" "MASH1_BulletSolverShape.inputNetworks[0].mashLinearVelocityThreshold"
		;
connectAttr "MASH1_Dynamics.angularVelocityThreshold" "MASH1_BulletSolverShape.inputNetworks[0].mashAngularVelocityThreshold"
		;
connectAttr "MASH1_Dynamics.collisionJitter" "MASH1_BulletSolverShape.inputNetworks[0].mashCollisionJitter"
		;
connectAttr "MASH1_Dynamics.contactMaskLayers" "MASH1_BulletSolverShape.inputNetworks[0].mashContactMaskLayers"
		;
connectAttr "MASH1_Dynamics.collisionMaskLayers" "MASH1_BulletSolverShape.inputNetworks[0].mashCollisionMaskLayers"
		;
connectAttr "MASH1_Dynamics.collisionGroupLayers" "MASH1_BulletSolverShape.inputNetworks[0].mashCollisionGroupLayers"
		;
connectAttr "MASH1_Dynamics.hierarchyMode" "MASH1_BulletSolverShape.inputNetworks[0].mashHierarchyMode"
		;
connectAttr "MASH1_Dynamics.initialStateJSON" "MASH1_BulletSolverShape.inputNetworks[0].mashInitialStateJSON"
		;
connectAttr "MASH1_Dynamics.useDensity" "MASH1_BulletSolverShape.inputNetworks[0].mashUseDensity"
		;
connectAttr "MASH1.outputPoints" "MASH1_BulletSolverShape.inputNetworks[0].inputPoints"
		;
connectAttr "camera1_translateX.o" "camera1.tx";
connectAttr "camera1_translateY.o" "camera1.ty";
connectAttr "camera1_translateZ.o" "camera1.tz";
connectAttr "camera1_rotateX.o" "camera1.rx";
connectAttr "camera1_rotateY.o" "camera1.ry";
connectAttr "camera1_rotateZ.o" "camera1.rz";
connectAttr "camera1_visibility.o" "camera1.v";
connectAttr "camera1_scaleX.o" "camera1.sx";
connectAttr "camera1_scaleY.o" "camera1.sy";
connectAttr "camera1_scaleZ.o" "camera1.sz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "MASH1_Dynamics.outputPoints" "MASH1.inputPoints";
connectAttr "MASH1_Distribute.waiterMessage" "MASH1.waiterMessage";
connectAttr "MASH1_Dynamics.waiterMessage" "MASH1.dynamicsMessage";
connectAttr "MASH1_Distribute.outputPoints" "MASH1_Transform.inputPoints";
connectAttr "MASH1_Replicator.outputPoints" "MASH1_Random.inputPoints";
connectAttr "MASH1_Random_mColourR.o" "MASH1_Random.mcr";
connectAttr "MASH1_Random_mColourG.o" "MASH1_Random.mcg";
connectAttr "MASH1_Random_mColourB.o" "MASH1_Random.mcb";
connectAttr "MASH1_Random_Envelope.o" "MASH1_Random.Envelope";
connectAttr "MASH1_Random_randEnvelope.o" "MASH1_Random.randEnvelope";
connectAttr "MASH1_Random_StepEnvelope.o" "MASH1_Random.StepEnvelope";
connectAttr "MASH1_Random_enableStrengthX.o" "MASH1_Random.enableStrengthX";
connectAttr "MASH1_Random_enableStrengthY.o" "MASH1_Random.enableStrengthY";
connectAttr "MASH1_Random_enableStrengthZ.o" "MASH1_Random.enableStrengthZ";
connectAttr "MASH1_Random_positionX.o" "MASH1_Random.positionX";
connectAttr "MASH1_Random_positionY.o" "MASH1_Random.positionY";
connectAttr "MASH1_Random_positionZ.o" "MASH1_Random.positionZ";
connectAttr "MASH1_Random_rotationY.o" "MASH1_Random.rotationY";
connectAttr "MASH1_Random_scaleX.o" "MASH1_Random.scaleX";
connectAttr "MASH1_Random_scaleY.o" "MASH1_Random.scaleY";
connectAttr "MASH1_Random_scaleZ.o" "MASH1_Random.scaleZ";
connectAttr "MASH1_Random_maxNumber.o" "MASH1_Random.max";
connectAttr "MASH1_Random_minNumber.o" "MASH1_Random.min";
connectAttr "MASH1_Random_maxNumberX.o" "MASH1_Random.maxX";
connectAttr "MASH1_Random_minNumberX.o" "MASH1_Random.minX";
connectAttr "MASH1_Random_maxNumberY.o" "MASH1_Random.maxY";
connectAttr "MASH1_Random_minNumberY.o" "MASH1_Random.minY";
connectAttr "MASH1_Random_maxNumberZ.o" "MASH1_Random.maxZ";
connectAttr "MASH1_Random_minNumberZ.o" "MASH1_Random.minZ";
connectAttr ":time1.o" "MASH1_Replicator.ti";
connectAttr "MASH1_Transform.outputPoints" "MASH1_Replicator.inputPoints";
connectAttr "MASH1_ReproMeshShape.wim" "MASH1_Repro.mmtx";
connectAttr "MASH1_ReproMeshShape.msg" "MASH1_Repro.meshmessage";
connectAttr "MASH1_BulletSolverShape.outputPoints[0]" "MASH1_Repro.inputPoints";
connectAttr "pCube1.msg" "MASH1_Repro.instancedGroup[0].gmsg";
connectAttr "pCube1.wm" "MASH1_Repro.instancedGroup[0].gmtx";
connectAttr "pCubeShape1.o" "MASH1_Repro.instancedGroup[0].inMesh[0].mesh";
connectAttr "pCubeShape1.wm" "MASH1_Repro.instancedGroup[0].inMesh[0].matrix";
connectAttr "groupId1.id" "MASH1_Repro.instancedGroup[0].inMesh[0].groupId[0]";
connectAttr "MASH1.instancerMessage" "MASH1_Repro.instancerMessage";
connectAttr "MASH1_BulletSolverShape.instancerMessage" "MASH1_Repro.dynamicsMessage"
		;
connectAttr "MASH1_Distribute.outputPoints" "MASH_ChannelRandom1.inputPoints";
connectAttr "MASH1_Transform.outputPoints" "MASH_ChannelRandom2.inputPoints";
connectAttr ":time1.o" "MASH1_Python.tm";
connectAttr "MASH1_Random.outputPoints" "MASH1_Python.inputPoints";
connectAttr ":time1.o" "MASH1_Offset.ti";
connectAttr "MASH1_Python.outputPoints" "MASH1_Offset.inputPoints";
connectAttr "MASH1_Offset_rotateOffsetZ.o" "MASH1_Offset.rotateOffsetZ";
connectAttr "polyCube1.out" "polyExtrudeVertex1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeVertex1.mp";
connectAttr "polyExtrudeVertex1.out" "polyBevel1.ip";
connectAttr "pCubeShape1.wm" "polyBevel1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyBevel1.out" "polyTweak1.ip";
connectAttr "aiStandardSurface1.out" "aiStandardSurface1SG.ss";
connectAttr "pCubeShape1.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "MASH1_ReproMeshShape.iog.og[0]" "aiStandardSurface1SG.dsm" -na;
connectAttr "groupId1.msg" "aiStandardSurface1SG.gn" -na;
connectAttr "aiStandardSurface1SG.msg" "materialInfo1.sg";
connectAttr "aiStandardSurface1.msg" "materialInfo1.m";
connectAttr "aiStandardSurface1.msg" "materialInfo1.t" -na;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr ":time1.o" "MASH1_Dynamics.time";
connectAttr "MASH1_Offset.outputPoints" "MASH1_Dynamics.inputPoints";
connectAttr "MASH1_Offset.outputPoints" "MASH_ChannelRandom3.inputPoints";
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
// End of Sound and animation  - Project 4.ma
