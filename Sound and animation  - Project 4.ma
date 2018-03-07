//Maya ASCII 2018 scene
//Name: Sound and animation  - Project 4.ma
//Last modified: Wed, Mar 07, 2018 04:52:55 PM
//Codeset: 1252
requires maya "2018";
requires -nodeType "MASH_BulletSolver" -nodeType "MASH_Waiter" -nodeType "MASH_Transform"
		 -nodeType "MASH_Replicator" -nodeType "MASH_Random" -nodeType "MASH_Distribute" -nodeType "MASH_Dynamics"
		 -nodeType "MASH_ChannelRandom" -nodeType "MASH_Repro" "MASH" "450";
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
	setAttr ".t" -type "double3" -18.677965235848458 14.698107270912658 42.15364213002286 ;
	setAttr ".r" -type "double3" -14.138352729680708 -15.399999999997407 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "6AB1561D-4166-40AF-CEAF-A49B1E51C91B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 44.82186966202994;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
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
	setAttr ".ow" 30;
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
	setAttr -av ".iog[0].og[0].gco";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "MASH1_BulletSolver";
	rename -uid "3C15A3FA-4459-4734-C163-E8BD4A32029A";
createNode MASH_BulletSolver -n "MASH1_BulletSolverShape" -p "MASH1_BulletSolver";
	rename -uid "E40E6438-41B4-7D78-ADF5-77A62F9A6B6E";
	addAttr -s false -ci true -h true -sn "instancerMessage" -ln "instancerMessage" 
		-at "message";
	setAttr -k off ".v";
	setAttr ".lastTime" 1;
	setAttr ".groundPlane" no;
	setAttr ".gravity" -type "float3" 0 0 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A384726B-4954-4F8F-E9FA-5CB566893DFA";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1AA7B785-4AF1-112D-B283-5DBD18FFF044";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9D104165-48B6-7045-8574-699236A23398";
createNode displayLayerManager -n "layerManager";
	rename -uid "8A870C09-45C1-A3CF-F41F-D0AB6B0EB04E";
createNode displayLayer -n "defaultLayer";
	rename -uid "A020B37F-44F1-B1CB-A0B4-C5AB4A9EC50B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B3E0D754-4EA5-D886-7044-F3B0BDA4921E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CBD6F7BA-496F-3F68-F526-74A7685D056E";
	setAttr ".g" yes;
createNode polyTorus -n "polyTorus1";
	rename -uid "F763274A-44F8-7256-0B1E-AB991DCCA708";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0762A34B-433B-3BC6-A37B-E1AD9530524D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1058\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1058\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1058\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "AAE1F9F9-4C85-6CDE-D4CD-BBA0BD1718B7";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode MASH_Waiter -n "MASH1";
	rename -uid "D037F941-4D71-FE7C-5879-10B1E4B1390F";
	addAttr -s false -ci true -h true -sn "instancerMessage" -ln "instancerMessage" 
		-at "message";
	addAttr -s false -ci true -h true -sn "dynamicsMessage" -ln "dynamicsMessage" -at "message";
	setAttr ".inRotPP" -type "vectorArray" 156 -184.77395629882813 0 -15.100250244140625 -341.96343994140625
		 0 221.2947998046875 -70.782806396484375 0 119.56649780273438 133.27005004882813 0
		 206.68353271484375 10.35833740234375 0 30.242523193359375 250.1669921875 0 -329.1146240234375 -346.730712890625
		 0 -149.66102600097656 182.0030517578125 0 275.98828125 343.17926025390625 0 -73.01495361328125 -118.10382080078125
		 0 -304.77163696289063 -247.08786010742188 0 34.55535888671875 -129.19741821289063
		 0 -279.462158203125 29.125152587890625 0 72.424957275390625 238.351806640625 0 59.019317626953125 -152.87625122070313
		 0 359.75146484375 -263.9091796875 0 325.311767578125 -5.961273193359375 0 -284.745361328125 -57.891693115234375
		 0 -288.54266357421875 -76.285980224609375 0 11.825225830078125 235.00323486328125
		 0 -246.45527648925781 343.93756103515625 0 -350.666259765625 -170.16249084472656
		 0 156.9755859375 -93.13726806640625 0 -344.95419311523438 -332.09390258789063 0 -265.77813720703125 214.85821533203125
		 0 22.852935791015625 269.729736328125 0 -189.08505249023438 -158.55241394042969 0
		 -319.09210205078125 313.70794677734375 0 -74.509735107421875 81.1080322265625 0 -114.2652587890625 -298.6033935546875
		 0 162.4176025390625 238.53497314453125 0 344.871337890625 -279.37725830078125 0 116.22311401367188 -116.13967895507813
		 0 150.78927612304688 91.17926025390625 0 269.20257568359375 -3.728118896484375 0
		 302.4429931640625 235.98968505859375 0 -247.12332153320313 -254.8863525390625 0 -59.090362548828125 -245.31343078613281
		 0 -127.674560546875 -192.13496398925781 0 -238.89669799804688 -9.4312744140625 0
		 -336.994873046875 -178.16163635253906 0 35.254364013671875 140.138671875 0 169.83197021484375 -210.25166320800781
		 0 -248.56759643554688 82.667755126953125 0 120.62521362304688 64.319793701171875
		 0 20.8262939453125 -159.63902282714844 0 -322.135986328125 -241.9293212890625 0 -293.62750244140625 -50.5528564453125
		 0 164.87066650390625 -228.23603820800781 0 288.44769287109375 157.7740478515625 0
		 197.15863037109375 -282.61929321289063 0 -221.46652221679688 -95.396026611328125
		 0 57.036285400390625 188.62884521484375 0 -307.429443359375 258.18682861328125 0
		 48.4349365234375 346.17462158203125 0 331.3349609375 -206.93605041503906 0 109.32696533203125 142.81442260742188
		 0 -63.725189208984375 126.19918823242188 0 331.4151611328125 77.728271484375 0 -187.61309814453125 -239.48980712890625
		 0 5.5703125 -27.529754638671875 0 -4.509765625 -166.61050415039063 0 -232.48727416992188 -165.63252258300781
		 0 -351.68826293945313 -352.45050048828125 0 -79.871337890625 -72.8560791015625 0
		 300.26495361328125 -20.506103515625 0 -140.79486083984375 -341.2916259765625 0 -177.06733703613281 -9.49761962890625
		 0 -10.871734619140625 314.93377685546875 0 -41.54852294921875 359.76318359375 0 332.4674072265625 207.51397705078125
		 0 222.857177734375 182.91473388671875 0 7.562408447265625 37.4393310546875 0 139.1646728515625 246.0208740234375
		 0 158.11053466796875 -188.79493713378906 0 71.538238525390625 -126.03741455078125
		 0 -340.37979125976563 -22.3819580078125 0 -329.7801513671875 -17.307891845703125
		 0 333.831298828125 -288.937744140625 0 -102.31683349609375 -85.38751220703125 0 -225.66316223144531 -249.34457397460938
		 0 215.31134033203125 1.4375 0 300.53204345703125 -313.95452880859375 0 -164.88565063476563 346.46923828125
		 0 -88.416412353515625 -174.92802429199219 0 -168.88542175292969 104.93600463867188
		 0 299.09405517578125 202.4578857421875 0 263.1353759765625 -74.841766357421875 0
		 -166.99827575683594 23.0423583984375 0 -55.646575927734375 14.5584716796875 0 102.72311401367188 -104.23284912109375
		 0 -187.14094543457031 -20.40850830078125 0 -141.95915222167969 -346.66986083984375
		 0 -306.93203735351563 -81.73388671875 0 125.47329711914063 316.13616943359375 0 53.191680908203125 217.96142578125
		 0 -136.4923095703125 -342.76303100585938 0 231.08209228515625 213.6407470703125 0
		 -0.417938232421875 -222.63893127441406 0 -227.60609436035156 -41.6572265625 0 -141.714111328125 311.5469970703125
		 0 -40.4583740234375 350.5836181640625 0 -275.192138671875 -117.51487731933594 0 -137.89468383789063 -292.29348754882813
		 0 -103.10311889648438 -296.73641967773438 0 85.736663818359375 -73.957611083984375
		 0 -85.589630126953125 32.95416259765625 0 -5.542205810546875 -287.709228515625 0
		 -150.541748046875 -184.82231140136719 0 -103.24246215820313 291.75384521484375 0
		 -142.6097412109375 183.1268310546875 0 272.86346435546875 -172.77653503417969 0 99.6893310546875 340.070556640625
		 0 -289.1614990234375 127.21600341796875 0 -60.254913330078125 -200.46104431152344
		 0 195.39697265625 44.119720458984375 0 288.5350341796875 255.10504150390625 0 -60.276763916015625 180.177490234375
		 0 193.5379638671875 -119.73640441894531 0 -192.83663940429688 -186.27827453613281
		 0 145.64605712890625 339.84710693359375 0 307.755615234375 318.3116455078125 0 235.94171142578125 -47.038238525390625
		 0 -294.54684448242188 172.02069091796875 0 323.83966064453125 6.103973388671875 0
		 44.171295166015625 -313.954833984375 0 -342.38131713867188 83.309112548828125 0 -258.90875244140625 258.95111083984375
		 0 260.1055908203125 -113.73611450195313 0 -347.07937622070313 -268.0093994140625
		 0 -73.330535888671875 -39.53326416015625 0 142.13656616210938 -93.66497802734375
		 0 -252.57241821289063 50.38690185546875 0 -129.80049133300781 -348.03363037109375
		 0 268.00531005859375 -356.41427612304688 0 -358.28875732421875 144.11767578125 0
		 -24.68310546875 -217.356201171875 0 -8.290374755859375 -174.00108337402344 0 30.595977783203125 -131.42024230957031
		 0 174.29425048828125 -298.61532592773438 0 -141.52006530761719 -135.00453186035156
		 0 358.841552734375 64.979461669921875 0 269.90966796875 -170.62971496582031 0 -222.031494140625 -214.18772888183594
		 0 235.43408203125 -340.00704956054688 0 304.29638671875 106.82437133789063 0 142.61550903320313 183.37701416015625
		 0 -129.07957458496094 -238.88436889648438 0 359.3695068359375 -113.0328369140625
		 0 36.898712158203125 57.522430419921875 0 -80.649017333984375 -339.47579956054688
		 0 -221.17306518554688 196.40283203125 0 223.97607421875 -3.4205322265625 0 -84.1287841796875 -132.06951904296875
		 0 -190.38291931152344 -263.40805053710938 0 309.8802490234375 86.843231201171875
		 0 -201.99870300292969 ;
	setAttr ".cacheIdPP" -type "vectorArray" 0 ;
	setAttr ".cacheVisibilityPP" -type "vectorArray" 0 ;
	setAttr ".initSt" -type "vectorArray" 0 ;
	setAttr ".filename" -type "string" "0";
createNode MASH_Transform -n "MASH1_Transform";
	rename -uid "DD7DF616-4081-B886-F757-AAA9AB78511D";
	setAttr ".fArray" -type "vectorArray" 0 ;
	setAttr ".positionAmount" -type "float3" -20 0 0 ;
	setAttr ".enablePointScale" yes;
createNode MASH_Random -n "MASH1_Random";
	rename -uid "5CA5EE33-4882-0103-EB54-3D9F5A3C3AA4";
	setAttr ".fArray" -type "vectorArray" 0 ;
	setAttr ".rotationX" 360;
	setAttr ".rotationZ" 360;
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
	setAttr ".ktv[0]"  1 10;
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
	setAttr ".ktv[0]"  1 2.8191490173339844;
createNode animCurveTU -n "MASH1_Random_randomSeed";
	rename -uid "68E0BED9-4F3E-1A24-442D-C29053E26A07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 19;
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
	setAttr ".ktv[0]"  1 8.5638294219970703;
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
	setAttr ".ampX" 39.157894134521484;
createNode MASH_Repro -n "MASH1_Repro";
	rename -uid "9EA256F9-423B-4718-1785-4B87C9CF3914";
	addAttr -s false -ci true -h true -sn "instancerMessage" -ln "instancerMessage" 
		-at "message";
	addAttr -s false -ci true -h true -sn "dynamicsMessage" -ln "dynamicsMessage" -at "message";
	setAttr ".numberOfObjects" 1;
	setAttr ".instancedGroup[0].inMesh[0].inShGroupId[0]"  -1;
createNode groupId -n "groupId1";
	rename -uid "5D2910C5-4E8E-295B-9FA3-779A26AEB07B";
createNode MASH_Dynamics -n "MASH1_Dynamics";
	rename -uid "848B6293-47CB-1499-46E2-8DB13929ED80";
	addAttr -s false -ci true -h true -sn "waiterMessage" -ln "waiterMessage" -at "message";
	setAttr ".collisionObjectScale" 0.23076923191547394;
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
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTorus1.out" "pTorusShape1.i";
connectAttr "MASH1_Repro.out" "MASH1_ReproMeshShape.i";
connectAttr "groupId1.id" "MASH1_ReproMeshShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "MASH1_ReproMeshShape.iog.og[0].gco";
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "MASH1_Random.outputPoints" "MASH1.inputPoints";
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
connectAttr "MASH1_Random_randomSeed.o" "MASH1_Random.seed";
connectAttr "MASH1_Random_maxNumber.o" "MASH1_Random.max";
connectAttr "MASH1_Random_minNumber.o" "MASH1_Random.min";
connectAttr "MASH1_Random_maxNumberX.o" "MASH1_Random.maxX";
connectAttr "MASH1_Random_minNumberX.o" "MASH1_Random.minX";
connectAttr "MASH1_Random_maxNumberY.o" "MASH1_Random.maxY";
connectAttr "MASH1_Random_minNumberY.o" "MASH1_Random.minY";
connectAttr "MASH1_Random_maxNumberZ.o" "MASH1_Random.maxZ";
connectAttr "MASH1_Random_minNumberZ.o" "MASH1_Random.minZ";
connectAttr ":time1.o" "MASH1_Replicator.ti";
connectAttr "MASH1_Dynamics.outputPoints" "MASH1_Replicator.inputPoints";
connectAttr "MASH1_ReproMeshShape.wim" "MASH1_Repro.mmtx";
connectAttr "MASH1_ReproMeshShape.msg" "MASH1_Repro.meshmessage";
connectAttr "MASH1_BulletSolverShape.outputPoints[0]" "MASH1_Repro.inputPoints";
connectAttr "pTorus1.msg" "MASH1_Repro.instancedGroup[0].gmsg";
connectAttr "pTorus1.wm" "MASH1_Repro.instancedGroup[0].gmtx";
connectAttr "pTorusShape1.o" "MASH1_Repro.instancedGroup[0].inMesh[0].mesh";
connectAttr "pTorusShape1.wm" "MASH1_Repro.instancedGroup[0].inMesh[0].matrix";
connectAttr "groupId1.id" "MASH1_Repro.instancedGroup[0].inMesh[0].groupId[0]";
connectAttr "MASH1.instancerMessage" "MASH1_Repro.instancerMessage";
connectAttr "MASH1_BulletSolverShape.instancerMessage" "MASH1_Repro.dynamicsMessage"
		;
connectAttr ":time1.o" "MASH1_Dynamics.time";
connectAttr "MASH1_Transform.outputPoints" "MASH1_Dynamics.inputPoints";
connectAttr "MASH_ChannelRandom2.outputPoints" "MASH1_Dynamics.dynamicsPP[0]";
connectAttr "MASH1_Distribute.outputPoints" "MASH_ChannelRandom1.inputPoints";
connectAttr "MASH1_Transform.outputPoints" "MASH_ChannelRandom2.inputPoints";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MASH1_ReproMeshShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of Sound and animation  - Project 4.ma
