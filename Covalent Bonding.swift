//
//  Covalent Bonding.swift
//  Chem_App
//
//  Created by Leo Andreas Mansukhani on 8/6/26.
//

//
//  Covalent Bonding.swift
//  Chem_App
//
//  Created by Leo Andreas Mansukhani on 8/6/26.
//

import SwiftUI

struct Covalent_Bonding: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                Text("Covalent Bonding")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding(.top)

                Divider()

                Text("Bonding Structures")
                    .font(.title2)
                    .fontWeight(.bold)

                // MARK: - Simple Covalent Molecules
                
                Text("Simple Covalent Molecules")
                    .font(.headline)

                Text("""
Simple covalent molecules consist of a small number of non-metal atoms joined together by strong covalent bonds.

• Strong covalent bonds hold the atoms together within each molecule.

• Weak intermolecular forces act between the molecules.

• Only a small amount of energy is required to overcome these weak intermolecular forces.

Therefore, simple covalent substances have low melting and boiling points.

Examples:
• Water (H₂O)
• Carbon dioxide (CO₂)
• Methane (CH₄)
• Ammonia (NH₃)

Simple covalent molecules do not conduct electricity because they have no free ions or delocalised electrons.
""")

                Divider()

                // MARK: - Giant Covalent Structures
                
                Text("Giant Covalent Structures")
                    .font(.headline)

                Text("""
Giant covalent structures contain millions of atoms joined together by strong covalent bonds.

Unlike simple molecules, there are no separate molecules.

Strong covalent bonds extend throughout the entire structure.

A very large amount of energy is required to break these bonds, giving giant covalent structures very high melting and boiling points.
""")

                Divider()

                // MARK: - Diamond
                
                Text("Diamond")
                    .font(.headline)

                Text("""
Diamond is an allotrope of carbon.

Each carbon atom forms four strong covalent bonds with four other carbon atoms.

This forms a giant three-dimensional tetrahedral structure.

Properties:
• Extremely hard.
• Very high melting point.
• Does not conduct electricity because all outer electrons are used in covalent bonds, leaving no delocalised electrons to carry charge.
""")

                Divider()

                // MARK: - Graphite
                
                Text("Graphite")
                    .font(.headline)

                Text("""
Graphite is also an allotrope of carbon.

Each carbon atom forms three strong covalent bonds with three other carbon atoms.

These atoms are arranged in layers of hexagonal rings.

Each carbon atom has one electron that is not used in bonding.

This electron becomes delocalised and is free to move through the layers.

Properties:
• Conducts electricity because of the delocalised electrons.
• High melting point because of the strong covalent bonds within each layer.
• Soft and slippery because weak forces between layers allow them to slide over one another.
""")

                Divider()

                // MARK: - Graphene
                
                Text("Graphene")
                    .font(.headline)

                Text("""
Graphene is a single layer of graphite.

Each carbon atom bonds to three other carbon atoms in a hexagonal arrangement.

Graphene conducts electricity because it contains delocalised electrons.

Properties:
• Extremely strong.
• Very light.
• Flexible.
• Excellent conductor of electricity and heat.
""")

                Divider()

                // MARK: - Silicon Dioxide
                
                Text("Silicon Dioxide (SiO₂)")
                    .font(.headline)

                Text("""
Silicon dioxide is a giant covalent structure.

Each silicon atom forms four covalent bonds with oxygen atoms, and each oxygen atom forms two covalent bonds with silicon atoms.

Properties:
• Very high melting point.
• Hard.
• Does not conduct electricity because there are no free electrons or ions.
""")
            }
            .padding()
        }
    }
}

#Preview {
    Covalent_Bonding()
}
