#!/usr/bin/ruby
#
# Original version August 18, 2010
# by Don Cruse
# http://doncruse.github.com
# 
#	License: http://www.opensource.org/licenses/mit-license.php
#
# Short form:
# You are of course welcome to edit this list, adding or
# removing abbreviations as you see fit.

TABLE6 = {
    "academy" => "Acad.",
    "academies" => "Acads.",
    "administrative" => "Admin.",
    "administration" => "Admin.",
    "administrator" => "Adm'r",
    "administratrix" => "Adm'x",
    "advertising" => "Adver.",
    "agriculture" => "Agric.",
    "agricultural" => "Agric.",
    "america" => "Am.",
    "american" => "Am.",
    "and" => "&",
    "associate" => "Assoc.",
    "associates" => "Assocs.",
    "atlantic" => "Atl.",
    "authority" => "Auth.",
    "authorities" => "Auths.",
    "automobile" => "Auto.",
    "automotive" => "Auto.",
    "automobiles" => "Autos.",
    "avenue" => "Ave.",
    "avenues" => "Aves.",
    "board" => "Bd.",
    "boards" => "Bds.",
    "broadcast" => "Broad.",
    "brotherhood" => "Bhd.",
    "brotherhoods" => "Bhds.",
    "broadcasting" => "Broad.",
    "bankruptcy" => "Bankr.",
    "brothers" => "Bros.",
    "building" => "Bldg.",
    "buildings" => "Bldgs.",
    "business" => "Bus.",
    "businesses" => "Bus.",
    "casualty" => "Cas.",
    "center" => "Ctr.",
    "centre" => "Ctr.",
    "centers" => "Ctrs.",
    "centres" => "Ctrs.",
    "central" => "Cent.",
    "chemical" => "Chem.",
    "chemicals" => "Chems.",
    "coalition" => "Coal.",
    "coalitions" => "Coals.",
    "college" => "Coll.",
    "colleges" => "Colls.",
    "commission" => "Comm'n",
    "commissions" => "Comm'ns",
    "commissioner" => "Comm'r",
    "commissioners" => "Comm'rs",
    "committee" => "Comm.",
    "committees" => "Comms.",
    "communication" => "Commc'n",
    "communications" => "Commc'ns",
    "community" => "Cmty.",
    "communities" => "Cmtys.",
    "company" => "Co.",
    "companies" => "Cos.",
    "compensation" => "Comp.",
    "condominium" => "Condo.",
    "condominiums" => "Condos.",
    "congress" => "Cong.",
    "congressional" => "Cong.",
    "congresses" => "Congs.",
    "consolidated" => "Consol.",
    "consolidateds" => "Consols.",
    "construction" => "Constr.",
    "constructions" => "Constrs.",
    "continental" => "Cont'l",
    "cooperative" => "Coop.",
    "cooperatives" => "Coops.",
    "corporation" => "Corp.",
    "corporations" => "Corps.",
    "correction" => "Corr.",
    "corrections" => "Corr.",
    "correctional" => "Corr.",
    "defense" => "Def.",
    "department" => "Dep't",
    "detention" => "Det.",
    "development" => "Dev.",
    "developments" => "Devs.",
    "director" => "Dir.",
    "directors" => "Dirs."
}

###########################################################
# Yes, this is the whole program.
# It takes the selected text, splits it into words,
# checks to see if the word appears in the table above
# (without regard to capitalization), and if so does
# the substitution.  Then it reassembles the text
# with spaces.

# It's recommended to combine this with a nice
# titlecase routine, such as the one published
# by John Gruber.

casename = STDIN.read
casename.strip!
tmp = Array.new

casename.split(/\s/).each do |word|
  if TABLE6.has_key?(word.downcase)
    tmp << TABLE6[word.downcase].capitalize
  else
    tmp << word
  end
end
puts tmp.join(" ")