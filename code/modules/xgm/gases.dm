/decl/xgm_gas/oxygen
	id = GAS_OXYGEN
	name = "Oxygen"
	specific_heat = 20	// J/(mol*K)
	molar_mass = 0.032	// kg/mol
	liquid_density = 1.141 // g/cm^3
	flags = XGM_GAS_OXIDIZER | XGM_GAS_FUSION_FUEL
	breathed_product = /datum/reagent/oxygen
	symbol_html = "O<sub>2</sub>"
	symbol = "O2"


/decl/xgm_gas/nitrogen
	id = GAS_NITROGEN
	name = "Nitrogen"
	specific_heat = 20	// J/(mol*K)
	molar_mass = 0.028	// kg/mol
	liquid_density = 0.8085 // g/cm^3
	symbol_html = "N<sub>2</sub>"
	symbol = "N2"

/decl/xgm_gas/carbon_dioxide
	id = GAS_CO2
	name = "Carbon Dioxide"
	specific_heat = 30	// J/(mol*K)
	molar_mass = 0.044	// kg/mol
	liquid_density = 1.101 // g/cm^3
	symbol_html = "CO<sub>2</sub>"
	symbol = "CO2"

/decl/xgm_gas/methyl_bromide
	id = GAS_METHYL_BROMIDE
	name = "Methyl Bromide"
	specific_heat = 42.59 // J/(mol*K)
	molar_mass = 0.095	  // kg/mol
	liquid_density = 1.7 // g/cm^3
	breathed_product = /datum/reagent/toxin/methyl_bromide
	symbol_html = "CH<sub>3</sub>Br"
	symbol = "CH3Br"

/decl/xgm_gas/phoron
	id = GAS_PHORON
	name = "Phoron"

	//Note that this has a significant impact on TTV yield.
	//Because it is so high, any leftover phoron soaks up a lot of heat and drops the yield pressure.
	specific_heat = 200	// J/(mol*K)

	//Hypothetical group 14 (same as carbon), period 8 element.
	//Using multiplicity rule, it's atomic number is 162
	//and following a N/Z ratio of 1.5, the molar mass of a monatomic gas is:
	molar_mass = 0.405	// kg/mol
	
	liquid_density = 1.101 // g/cm^3 // same as CO2, but it never condenses anyway

	tile_color = "#ff9940"
	overlay_limit = 0.7
	flags = XGM_GAS_FUEL | XGM_GAS_CONTAMINANT | XGM_GAS_FUSION_FUEL
	breathed_product = /datum/reagent/toxin/phoron
	symbol_html = "Ph"
	symbol = "Ph"

/decl/xgm_gas/sleeping_agent
	id = GAS_N2O
	name = "Nitrous Oxide"
	specific_heat = 40	// J/(mol*K)
	molar_mass = 0.044	// kg/mol. N2O
	liquid_density = 1.220 // g/cm^3

	tile_overlay = "sleeping_agent"
	overlay_limit = 1
	flags = XGM_GAS_OXIDIZER //N2O is a powerful oxidizer
	breathed_product = /datum/reagent/nitrous_oxide
	symbol_html = "N<sub>2</sub>O"
	symbol = "N2O"

/decl/xgm_gas/methane
	id = GAS_METHANE
	name = "Methane"
	specific_heat = 30	// J/(mol*K)
	molar_mass = 0.016	// kg/mol
	liquid_density = 0.42 // g/cm^3
	flags = XGM_GAS_FUEL
	symbol_html = "CH<sub>4</sub>"
	symbol = "CH4"

/decl/xgm_gas/alium
	id = GAS_ALIEN
	name = "Aliether"
	hidden_from_codex = TRUE
	symbol_html = "X"
	symbol = "X"

/decl/xgm_gas/alium/New()
	var/num = rand(100,999)
	name = "Compound #[num]"
	specific_heat = rand(1, 400)	// J/(mol*K)
	molar_mass = rand(20,800)/1000	// kg/mol
	liquid_density = rand(600,1400)/1000 // g/cm^3 // .6 to 1.4
	if(prob(40))
		flags |= XGM_GAS_FUEL
	else if(prob(40)) //it's prooobably a bad idea for gas being oxidizer to itself.
		flags |= XGM_GAS_OXIDIZER
	if(prob(40))
		flags |= XGM_GAS_CONTAMINANT
	if(prob(40))
		flags |= XGM_GAS_FUSION_FUEL

	symbol_html = "X<sup>[num]</sup>"
	symbol = "X-[num]"
	if(prob(50))
		tile_color = RANDOM_RGB
		overlay_limit = 0.5

/decl/xgm_gas/hydrogen
	id = GAS_HYDROGEN
	name = "Hydrogen"
	specific_heat = 100	// J/(mol*K)
	molar_mass = 0.002	// kg/mol
	liquid_density = 0.07 // g/cm^3
	flags = XGM_GAS_FUEL|XGM_GAS_FUSION_FUEL
	burn_product = GAS_STEAM
	symbol_html = "H<sub>2</sub>"
	symbol = "H2"

/decl/xgm_gas/hydrogen/deuterium
	id = GAS_DEUTERIUM
	name = "Deuterium"
	specific_heat = 101.16 // J/(mol*K)
	molar_mass = 0.004 // kg/mol
	symbol_html = "D"
	symbol = "D"

/decl/xgm_gas/hydrogen/tritium
	id = GAS_TRITIUM
	name = "Tritium"
	specific_heat = 102.32 // J/(mol*K) // literally a best guess
	symbol_html = "T"
	symbol = "T"

/decl/xgm_gas/helium
	id = GAS_HELIUM
	name = "Helium"
	specific_heat = 80	// J/(mol*K)
	molar_mass = 0.004	// kg/mol
	liquid_density = 1.25 // g/cm^3
	flags = XGM_GAS_FUSION_FUEL
	breathed_product = /datum/reagent/helium
	symbol_html = "He"
	symbol = "He"

/decl/xgm_gas/argon
	id = GAS_ARGON
	name = "Argon"
	specific_heat = 10	// J/(mol*K)
	molar_mass = 0.018	// kg/mol
	liquid_density = 1.3954 // g/cm^3
	symbol_html = "Ar"
	symbol = "Ar"

// If narcosis is ever simulated, krypton has a narcotic potency seven times greater than regular airmix.
/decl/xgm_gas/krypton
	id = GAS_KRYPTON
	name = "Krypton"
	specific_heat = 5	// J/(mol*K)
	molar_mass = 0.036	// kg/mol
	liquid_density = 2.413 // g/cm^3
	symbol_html = "Kr"
	symbol = "Kr"

/decl/xgm_gas/neon
	id = GAS_NEON
	name = "Neon"
	specific_heat = 20	// J/(mol*K)
	molar_mass = 0.01	// kg/mol
	liquid_density = 1.207 // g/cm^3
	symbol_html = "Ne"
	symbol = "Ne"

/decl/xgm_gas/xenon
	id = GAS_XENON
	name = "Xenon"
	specific_heat = 3	// J/(mol*K)
	molar_mass = 0.054	// kg/mol
	liquid_density = 2.942 // g/cm^3
	breathed_product = /datum/reagent/nitrous_oxide/xenon
	symbol_html = "Xe"
	symbol = "Xe"

/decl/xgm_gas/nitrodioxide
	id = GAS_NO2
	name = "Nitrogen Dioxide"
	tile_color = "#ca6409"
	specific_heat = 37	// J/(mol*K)
	molar_mass = 0.054	// kg/mol
	liquid_density = 1.45 // g/cm^3
	flags = XGM_GAS_OXIDIZER
	breathed_product = /datum/reagent/toxin
	symbol_html = "NO<sub>2</sub>"
	symbol = "NO2"

/decl/xgm_gas/nitricoxide
	id = GAS_NO
	name = "Nitric Oxide"

	specific_heat = 10	// J/(mol*K)
	molar_mass = 0.030	// kg/mol
	liquid_density = 1.27 // g/cm^3
	flags = XGM_GAS_OXIDIZER
	symbol_html = "NO"
	symbol = "NO"

/decl/xgm_gas/chlorine
	id = GAS_CHLORINE
	name = "Chlorine"
	tile_color = "#c5f72d"
	overlay_limit = 0.5
	specific_heat = 5	// J/(mol*K)
	molar_mass = 0.017	// kg/mol
	liquid_density = 1.5625 // g/cm^3
	flags = XGM_GAS_CONTAMINANT
	breathed_product = /datum/reagent/toxin/chlorine
	symbol_html = "Cl"
	symbol = "Cl"

/decl/xgm_gas/vapor
	id = GAS_STEAM
	name = "Steam"
	tile_overlay = "generic"
	overlay_limit = 0.5
	specific_heat = 30	// J/(mol*K)
	molar_mass = 0.020	// kg/mol
	liquid_density = 1 // g/cm^3
	breathed_product =     /datum/reagent/water
	condensation_product = /datum/reagent/water
	condensation_point =   308.15 // 35C. Dew point is ~20C but this is better for gameplay considerations.
	symbol_html = "H<sub>2</sub>O"
	symbol = "H2O"

/decl/xgm_gas/sulfurdioxide
	id = GAS_SULFUR
	name = "Sulfur Dioxide"

	specific_heat = 30	// J/(mol*K)
	molar_mass = 0.044	// kg/mol
	liquid_density = 2.6288 // g/cm^3
	symbol_html = "SO<sub>2</sub>"
	symbol = "SO2"

/decl/xgm_gas/ammonia
	id = GAS_AMMONIA
	name = "Ammonia"

	specific_heat = 20	// J/(mol*K)
	molar_mass = 0.017	// kg/mol
	liquid_density = 0.681 // g/cm^3
	breathed_product = /datum/reagent/ammonia
	symbol_html = "NH<sub>3</sub>"
	symbol = "NH3"

/decl/xgm_gas/carbon_monoxide
	id = GAS_CO
	name = "Carbon Monoxide"
	specific_heat = 30	// J/(mol*K)
	molar_mass = 0.028	// kg/mol
	liquid_density = 0.789 // g/cm^3
	breathed_product = /datum/reagent/carbon_monoxide
	symbol_html = "CO"
	symbol = "CO"

/////////
// FPE Gas
/////////

/decl/xgm_gas/heptafluoropropane
	id = GAS_HFP
	name = "Heptafluoropropane"
	specific_heat = 777	// J/(mol*K) - No, this isn't a joke. HFP is spooky.
	molar_mass = 0.170	// kg/mol
	liquid_density = 1.46 // g/cm^3
	breathed_product =     /datum/reagent/toxin/hfp
	condensation_product = /datum/reagent/toxin/hfp
	condensation_point =   923.15 // 650C.
	symbol_html = "HFP"
	symbol = "HFP"

/////////
// ICCG Propellant
/////////
/decl/xgm_gas/sulfur_tetrafluoride
	id = GAS_SF4
	name = "Sulfur Tetrafluoride"
	molar_mass = 0.108	// kg/mol
	liquid_density = 1.95 // g/cm^3
	flags = XGM_GAS_FUEL | XGM_GAS_CONTAMINANT
	breathed_product = /datum/reagent/acid/sf4
	condensation_product = /datum/reagent/acid/hf
	condensation_point = 235.15 //-38c
	symbol_html = "SF<sub>4</sub>"
	symbol = "SF4"
