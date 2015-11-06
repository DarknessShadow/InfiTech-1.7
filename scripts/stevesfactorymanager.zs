// --- Created by DarknessShadow ---


# Aliases

// Steves Factory Manager
val SteveManager                        = <StevesFactoryManager:BlockMachineManagerName>;
val InventoryCable                      = <StevesFactoryManager:BlockCableName>;
val InventoryRelay                      = <StevesFactoryManager:BlockCableRelayName>;
val AdvInventoryRelay                   = <StevesFactoryManager:BlockCableRelayName:8>;
val RSEmitter                           = <StevesFactoryManager:BlockCableOutputName>;
val RSReceiver                          = <StevesFactoryManager:BlockCableInputName>;
val ItemValve                           = <StevesFactoryManager:BlockCableIntakeName>;
val RapidItemValve                      = <StevesFactoryManager:BlockCableIntakeName:8>;
val BlockDetector                       = <StevesFactoryManager:BlockCableBUDName>;
val BlockGate                           = <StevesFactoryManager:BlockCableBreakerName>;
val CableCluster                        = <StevesFactoryManager:BlockCableClusterName>;
val AdvCableCluster                     = <StevesFactoryManager:BlockCableClusterName:8>;
val CableCamouflage                     = <StevesFactoryManager:BlockCableCamouflageName>;
val DoubleSidedCableCamouflage          = <StevesFactoryManager:BlockCableCamouflageName:1>;
val TransCableCamouflage                = <StevesFactoryManager:BlockCableCamouflageName:2>;
val SignUpdater                         = <StevesFactoryManager:BlockCableSignName>;
val CreativeSupplier                    = <StevesFactoryManager:BlockCableCreativeName>;

// gregtech + ic2
val FullyChargedChargingLapotronCrystal = <IC2:itemBatChargeLamaCrystal:1>.onlyWithTag({charge: 4.0E7});
val pumpHV                              = <gregtech:gt.metaitem.01:32612>;
val pistonHV                            = <gregtech:gt.metaitem.01:32642>;
val conveyorHV                          = <gregtech:gt.metaitem.01:32632>;
val emitterMV                           = <gregtech:gt.metaitem.01:32681>;
val sensorMV                            = <gregtech:gt.metaitem.01:32691>;
val fieldGeneratorLV                    = <gregtech:gt.metaitem.01:32670>;
val sheetRubber                         = <ore:sheetRubber>;
val plateRedstone                       = <ore:plateRedstone>;
val plateAluminium                      = <ore:plateAluminium>;
val plateStainlessSteel                 = <ore:plateStainlessSteel>;
val screwTungstenSteel                  = <ore:screwTungstenSteel>;
val circuitPrimitive                    = <ore:circuitPrimitive>;
val circuitGood                         = <ore:circuitGood>;
val circuitAdvanced                     = <ore:circuitAdvanced>;

//tools
var HHammer                             = <ore:craftingToolHardHammer>;
var screwdriver                         = <ore:craftingToolScrewdriver>;

// opencomputers
val hddT3                               = <OpenComputers:item:7>;
val serverT3                            = <OpenComputers:item:40>;
val cpuT3                               = <OpenComputers:item:43>;
val redstoneCard                        = <OpenComputers:item:66>;
val signUpgrade                         = <OpenComputers:item:35>;
val serverRack                          = <OpenComputers:serverRack>;

//
val smartcable                          = <appliedenergistics2:item.ItemMultiPart:56>;
val MEannihilationPlane                 = <appliedenergistics2:item.ItemMultiPart:300>;
val MEformationPlane                    = <appliedenergistics2:item.ItemMultiPart:320>;
val scribingtool                        = <Thaumcraft:ItemInkwell>;
val itemGrate                           = <Thaumcraft:blockMetalDevice:5>;
val vacuumhopper                        = <OpenBlocks:vacuumhopper>;
val paper                               = <minecraft:paper>;


# Blocks/Items Removal

CreativeSupplier.addTooltip(format.red(format.bold("This item is DISABLED!"))); 


# Recipe Tweaks

recipes.remove(SteveManager);
recipes.addShaped(SteveManager, [
	[pumpHV, pistonHV, conveyorHV],
	[hddT3, serverT3, cpuT3],
	[FullyChargedChargingLapotronCrystal, serverRack, FullyChargedChargingLapotronCrystal]]);
SteveManager.addTooltip(format.red("fully charged Charging Lapotron Crystal required"));

recipes.remove(InventoryCable);
recipes.addShaped(InventoryCable * 3, [
	[sheetRubber, pumpHV, sheetRubber],
	[smartcable, smartcable, smartcable],
	[sheetRubber, conveyorHV, sheetRubber]]);

//recipes.remove(InventoryRelay);
//recipes.addShaped(InventoryRelay, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

//recipes.remove(AdvInventoryRelay);
//recipes.addShaped(AdvInventoryRelay, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

recipes.remove(RSEmitter);
recipes.addShaped(RSEmitter, [
	[plateRedstone, circuitGood, plateRedstone],
	[emitterMV, InventoryCable, redstoneCard],
	[circuitPrimitive, circuitGood, circuitPrimitive]]);

recipes.remove(RSReceiver);
recipes.addShaped(RSReceiver, [
	[plateRedstone, circuitGood, plateRedstone],
	[sensorMV, InventoryCable, redstoneCard],
	[circuitPrimitive, circuitGood, circuitPrimitive]]);

recipes.remove(ItemValve);
recipes.addShaped(ItemValve, [
	[plateAluminium, vacuumhopper, plateAluminium],
	[sensorMV, InventoryCable, emitterMV],
	[plateAluminium, itemGrate, plateAluminium]]);

recipes.remove(RapidItemValve);
recipes.addShaped(RapidItemValve, [
	[sensorMV, fieldGeneratorLV, sensorMV],
	[plateStainlessSteel, ItemValve, plateStainlessSteel],
	[circuitAdvanced, fieldGeneratorLV, circuitAdvanced]]);

//recipes.remove(BlockDetector);
//recipes.addShaped(BlockDetector, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

recipes.remove(BlockGate);
recipes.addShaped(BlockGate, [
	[screwTungstenSteel, HHammer, screwTungstenSteel],
	[MEannihilationPlane, InventoryCable, MEformationPlane],
	[screwTungstenSteel, screwdriver, screwTungstenSteel]]);

//recipes.remove(CableCluster);
//recipes.addShaped(CableCluster, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

//recipes.remove(AdvCableCluster);
//recipes.addShaped(AdvCableCluster, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

//recipes.remove(CableCamouflage);
//recipes.addShaped(CableCamouflage, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

//recipes.remove(DoubleSidedCableCamouflage);
//recipes.addShaped(DoubleSidedCableCamouflage, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

//recipes.remove(TransCableCamouflage);
//recipes.addShaped(TransCableCamouflage, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

recipes.remove(SignUpdater);
recipes.addShaped(SignUpdater, [
      [paper, scribingtool, paper],
      [paper, InventoryCable, paper],
      [paper, signUpgrade, paper]]);
