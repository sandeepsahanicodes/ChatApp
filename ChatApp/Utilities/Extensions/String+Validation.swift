//
//  String+Validation.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 02/06/25.
//

import Foundation
import RegexBuilder

extension String {
    var isValidEmail: Bool {
        let emailRegex = Regex {
            // Local part
            OneOrMore {
                CharacterClass(
                    ("a"..."z"), ("A"..."Z"), ("0"..."9"),
                    .anyOf("._%+-")
                )
            }

            "@"

            // Domain name
            OneOrMore {
                CharacterClass(
                    ("a"..."z"), ("A"..."Z"), ("0"..."9"),
                    .anyOf("-.")
                )
            }

            "."
            
            // Top-level domain
            Repeat(2...24) {
                CharacterClass(
                    ("a"..."z"), ("A"..."Z")
                )
            }
        }

        return self.wholeMatch(of: emailRegex) != nil
    }
}
