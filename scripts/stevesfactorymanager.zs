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
val DSCableCamouflage                   = <StevesFactoryManager:BlockCableCamouflageName:1>;
val TransCableCamouflage                = <StevesFactoryManager:BlockCableCamouflageName:2>;
val SignUpdater                         = <StevesFactoryManager:BlockCableSignName>;

// gregtech
val FullychargedLapotronicEnergyOrb     = <gregtech:gt.metaitem.01:32597>.onlyWithTag({"GT.ItemCharge": 100000000 as long});



# Blocks/Items Removal

# Recipe Tweaks

recipes.remove(SteveManager);
recipes.addShaped(SteveManager, [
	[FullychargedLapotronicEnergyOrb, null, null],
	[null, null, null],
	[null, null, FullychargedLapotronicEnergyOrb]]);
SteveManager.addTooltip(format.red("Fully Charged Lapotronic Energy Orb required"));
