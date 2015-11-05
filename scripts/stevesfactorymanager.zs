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

// gregtech + ic2
val FullyChargedChargingLapotronCrystal = <IC2:itemBatChargeLamaCrystal:1>.onlyWithTag({charge: 4.0E7});
//val FullychargedLapotronicEnergyOrb     = <gregtech:gt.metaitem.01:32597>.onlyWithTag({"GT.ItemCharge": 100000000 as long});
val pumpHV                              = <gregtech:gt.metaitem.01:32612>;
val pistonHV                            = <gregtech:gt.metaitem.01:32642>;
val conveyorHV                          = <gregtech:gt.metaitem.01:32632>;
val sheetRubber                         = <ore:sheetRubber>;

// opencomputers
val hddT3                               = <OpenComputers:item:7>;
val serverT3                            = <OpenComputers:item:40>;
val cpuT3                               = <OpenComputers:item:43>;
val serverRack                          = <OpenComputers:serverRack>;

// AE2
val smartcable                          = <appliedenergistics2:item.ItemMultiPart:56>;


# Blocks/Items Removal

# Recipe Tweaks

//recipes.remove(SteveManager);
recipes.addShaped(SteveManager, [
	[pumpHV, pistonHV, conveyorHV],
	[hddT3, serverT3, cpuT3],
	[FullyChargedChargingLapotronCrystal, serverRack, FullyChargedChargingLapotronCrystal]]);
SteveManager.addTooltip(format.red("fully charged Charging Lapotron Crystal required"));

//recipes.remove(InventoryCable);
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

//recipes.remove(RSEmitter);
//recipes.addShaped(RSEmitter, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

//recipes.remove(ItemValve);
//recipes.addShaped(ItemValve, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

//recipes.remove(RapidItemValve);
//recipes.addShaped(RapidItemValve, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

//recipes.remove(BlockDetector);
//recipes.addShaped(BlockDetector, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

//recipes.remove(BlockGate);
//recipes.addShaped(BlockGate, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);

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

//recipes.remove(SignUpdater);
//recipes.addShaped(SignUpdater, [
//	[null, null, null],
//	[null, null, null],
//	[null, null, null]]);
