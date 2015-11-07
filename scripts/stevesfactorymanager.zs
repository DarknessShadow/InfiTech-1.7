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
val pumpMV                              = <gregtech:gt.metaitem.01:32611>;
val pumpHV                              = <gregtech:gt.metaitem.01:32612>;
val pistonMV                            = <gregtech:gt.metaitem.01:32641>;
val pistonHV                            = <gregtech:gt.metaitem.01:32642>;
val conveyorMV                          = <gregtech:gt.metaitem.01:32631>;
val conveyorHV                          = <gregtech:gt.metaitem.01:32632>;
val conveyorEV                          = <gregtech:gt.metaitem.01:32633>;
val emitterMV                           = <gregtech:gt.metaitem.01:32681>;
val sensorMV                            = <gregtech:gt.metaitem.01:32691>;
val fieldGeneratorLV                    = <gregtech:gt.metaitem.01:32670>;
val fieldGeneratorHV                    = <gregtech:gt.metaitem.01:32672>;
val activityDetector                    = <gregtech:gt.metaitem.01:32731>;
val itemDetector                        = <gregtech:gt.metaitem.01:32733>;
val ducttape                            = <gregtech:gt.metaitem.01:32764>;
val springNeodymiumMagnetic             = <ore:springNeodymiumMagnetic>;
val sheetRubber                         = <ore:sheetRubber>;
val plateRedstone                       = <ore:plateRedstone>;
val plateAluminium                      = <ore:plateAluminium>;
val plateStainlessSteel                 = <ore:plateStainlessSteel>;
val plateSteel                          = <ore:plateSteel>;
val plateEnderPearl                     = <ore:plateEnderPearl>;
val plateSilicon                        = <ore:plateSilicon>;
val plateDoubleChrome                   = <ore:plateDoubleChrome>;
val plateQuintupleTungstenSteel         = <ore:plateQuintupleTungstenSteel>;
val foilStainlessSteel                  = <ore:foilStainlessSteel>;
val foilEnderium                        = <ore:foilEnderium>;
val screwTungstenSteel                  = <ore:screwTungstenSteel>;
val circuitPrimitive                    = <ore:circuitPrimitive>;
val circuitBasic                        = <ore:circuitBasic>;
val circuitGood                         = <ore:circuitGood>;
val circuitAdvanced                     = <ore:circuitAdvanced>;

//tools
var HHammer                             = <ore:craftingToolHardHammer>;
var screwdriver                         = <ore:craftingToolScrewdriver>;
var wrench                              = <ore:craftingToolWrench>;

// opencomputers
val computercaseT3                      = <OpenComputers:case3>;
val hddT2                               = <OpenComputers:item:6>;
val apuT2                               = <OpenComputers:item:102>;
val redstoneCard                        = <OpenComputers:item:66>;
val signUpgrade                         = <OpenComputers:item:35>;
val networkcard                         = <OpenComputers:item:11>;
val chamelium                           = <OpenComputers:item:96>;
val chameliumBlock                      = <OpenComputers:chameliumBlock>;

//
val smartcable                          = <appliedenergistics2:item.ItemMultiPart:56>;
val MEannihilationPlane                 = <appliedenergistics2:item.ItemMultiPart:300>;
val MEformationPlane                    = <appliedenergistics2:item.ItemMultiPart:320>;
val scribingtool                        = <Thaumcraft:ItemInkwell>;
val itemGrate                           = <Thaumcraft:blockMetalDevice:5>;
val vacuumhopper                        = <OpenBlocks:vacuumhopper>;
val paper                               = <minecraft:paper>;
val dyeGreen                            = <ore:dyeGreen>;
val dyeRed                              = <ore:dyeRed>;
val dyeBlue                             = <ore:dyeBlue>;
val dyeYellow                           = <ore:dyeYellow>;


# Blocks/Items Removal

CreativeSupplier.addTooltip(format.red(format.bold("This item is DISABLED!"))); 


# Recipe Tweaks

recipes.remove(SteveManager);
recipes.addShaped(SteveManager, [
	[pumpHV, pistonHV, conveyorHV],
	[hddT2, computercaseT3, apuT2],
	[FullyChargedChargingLapotronCrystal, networkcard, FullyChargedChargingLapotronCrystal]]);
SteveManager.addTooltip(format.red("fully charged Charging Lapotron Crystal required"));

recipes.remove(InventoryCable);
recipes.addShaped(InventoryCable * 3, [
	[sheetRubber, pumpMV, sheetRubber],
	[smartcable, smartcable, smartcable],
	[sheetRubber, conveyorMV, sheetRubber]]);

recipes.remove(InventoryRelay);
recipes.addShaped(InventoryRelay, [
        [plateAluminium, pistonMV, plateAluminium],
        [conveyorMV, InventoryCable, conveyorMV],
        [plateSilicon, itemDetector, plateSilicon]]);

recipes.remove(AdvInventoryRelay);
recipes.addShaped(AdvInventoryRelay, [
        [plateDoubleChrome, conveyorEV, plateDoubleChrome],
        [springNeodymiumMagnetic, InventoryRelay, springNeodymiumMagnetic],
        [fieldGeneratorHV, plateQuintupleTungstenSteel, activityDetector]]);

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

recipes.remove(BlockDetector);
recipes.addShaped(BlockDetector, [
	[plateSteel, sensorMV, plateSteel],
	[activityDetector, InventoryCable, activityDetector],
	[plateSteel, circuitBasic, plateSteel]]);

recipes.remove(BlockGate);
recipes.addShaped(BlockGate, [
	[screwTungstenSteel, HHammer, screwTungstenSteel],
	[MEannihilationPlane, InventoryCable, MEformationPlane],
	[screwTungstenSteel, screwdriver, screwTungstenSteel]]);

recipes.remove(CableCluster);
recipes.addShaped(CableCluster, [
	[foilStainlessSteel, HHammer, foilStainlessSteel],
	[plateEnderPearl, InventoryCable, plateEnderPearl],
	[foilStainlessSteel, wrench, foilStainlessSteel]]);

recipes.remove(AdvCableCluster);
recipes.addShaped(AdvCableCluster, [
	[foilEnderium, HHammer, foilEnderium],
	[fieldGeneratorLV, CableCluster, fieldGeneratorLV],
	[foilEnderium, wrench, foilEnderium]]);

recipes.remove(CableCamouflage);
recipes.addShaped(CableCamouflage * 2, [
	[dyeGreen, fieldGeneratorLV, dyeRed],
	[InventoryCable, chameliumBlock, InventoryCable],
	[dyeBlue, circuitBasic, dyeYellow]]);

recipes.remove(DoubleSidedCableCamouflage);
recipes.addShaped(DoubleSidedCableCamouflage * 2, [
	[chamelium, emitterMV, chamelium],
	[CableCamouflage, ducttape, CableCamouflage],
	[chamelium, emitterMV, chamelium]]);

recipes.remove(TransCableCamouflage);
recipes.addShaped(TransCableCamouflage * 2, [
	[circuitAdvanced, pistonMV, circuitAdvanced],
	[DoubleSidedCableCamouflage, fieldGeneratorLV, DoubleSidedCableCamouflage],
	[emitterMV, chamelium, emitterMV]]);

recipes.remove(SignUpdater);
recipes.addShaped(SignUpdater, [
      [paper, scribingtool, paper],
      [paper, InventoryCable, paper],
      [paper, signUpgrade, paper]]);
