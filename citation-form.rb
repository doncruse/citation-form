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
    "directors" => "Dirs.",
    "discount" => "Disc.",
    "discounts" => "Discs.",
    "distributor" => "Distrib.",
    "distributors" => "Distribs.",
    "distributing" => "Distrib.",
    "district" => "Dist.",
    "districts" => "Dists.",
    "division" => "Div.",
    "divisions" => "Divs.",
    "east" => "E.",
    "eastern" => "E.",
    "economic" => "Econ.",
    "economics" => "Econ.",
    "economical" => "Econ.",
    "economy" => "Econ.",
    "economies" => "Econs.",
    "education" => "Educ.",
    "educational" => "Educ.",
    "electric" => "Elec.",
    "electrical" => "Elec.",
    "electricity" => "Elec.",
    "electronic" => "Elec.",
    "electronics" => "Elecs.",
    "engineer" => "Eng'r",
    "engineers" => "Eng'rs",
    "engineering" => "Eng'g",
    "enterprise" => "Enter.",
    "enterprises" => "Enters.",
    "entertainment" => "Entm't",
    "entertainments" => "Entm'ts",
    "environment" => "Env't",
    "environments" => "Env'ts",
    "environmental" => "Envtl.",
    "equality" => "Equal.",
    "equipment" => "Equip.",
    "equipments" => "Equips.",
    "examiner" => "Exam'r",
    "examiners" => "Exam'rs",
    "exchange" => "Exch.",
    "exchanges" => "Exchs.",
    "executor" => "Ex'r",
    "executrix" => "Ex'x",
    "executors" => "Ex'rs",
    "executrixes" => "Ex'xs",
    "export" => "Exp.",
    "exports" => "Exps.",
    "federal" => "Fed.",
    "federals" => "Feds."
}
  # These abbreviations validated against the 18th edition of the Bluebook.
  # No claim of ownership is made about any abbrevation, because that
  # would be silly.
  
  PLACES = {
  	'alabama' => 'Ala.',
  	'american aamoa' => 'Am. Sam.',
  	'arizona' => 'Ariz.',
  	'arkansas' => 'Ark.',
  	'baltimore' => 'Balt.',
  	'california' => 'Cal.',
  	'chicago' => 'Chi.',
  	'colorado' => 'Colo.',
  	'connecticut' => 'Conn.',
  	'delaware' => 'Del.',
  	'district of columbia' => 'D.C.',
  	'florida' => 'Fla.',
  	'georgia' => "Ga.",
  	'hawaii' => 'Haw.',
  	'hawai\'i' => 'Haw.',
  	'illinois' => 'Ill.',
  	'indiana' => 'Ind.',
  	'kansas' => 'Kan.',
  	'kentucky' => "Ky.",
  	'los angeles' => "L.A.",
  	'louisiana' => "La.",
  	'maine' => 'Me.',
  	'maryland' => 'Md.',
  	'massachusetts' => 'Mass.',
  	'michigan' => "Mich.",
  	'minnesota' => 'Minn.',
  	'mississippi' => 'Miss.',
  	'missouri' => 'Mo.',
  	'montana' => 'Mont.',
  	'nebraska' => 'Neb.',
  	'nevada' => 'Nev.',
  	'new hampshire' => 'N.H.',
  	'new jersey' => 'N.J.',
  	'new mexico' => 'N.M.',
  	'new york' => 'N.Y.',
  	'north carolina' => 'N.C.',
  	'north dakota' => 'N.D.',
  	'northern mariana islands' => 'N. Mar. I.',
  	'oklahoma' => 'Okla.',
  	'oregon' => 'Or.',
  	'pennsylvania' => 'Pa.',
  	'philadelphia' => 'Phila.',
  	'puerto rico' => 'P.R.',
  	'rhode island' => 'R.I.',
  	'south carolina' => 'S.C.',
  	'south dakota' => 'S.D.',
  	'san francisco' => 'S.F.',
  	'tennessee' => 'Tenn.',
  	'texas' => 'Tex.',
  	'vermont' => 'Vt.',
  	'virgin islands' => 'V.I.',
  	'virginia' => 'Va.',
  	'washington' => 'Wash.',
  	'west virginia' => 'W. Va.',
  	'wisconsin' => 'Wis.',
  	'wyoming' => 'Wyo.'
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

# NOTE: After I have developed this, I may think
# about some speed optimizations, such as merging these
# into a single hash rather than separated by type.

casename = STDIN.read
casename.strip!
tmp = Array.new

casename.split(/\s/).each do |word|
  if TABLE6.has_key?(word.downcase)
    tmp << TABLE6[word.downcase].capitalize
  elsif PLACES.has_key?(word.downcase)
    tmp << PLACES[word.downcase].capitalize    
  else
    tmp << word
  end
end
puts tmp.join(" ")