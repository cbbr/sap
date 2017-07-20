-- Text Mining Examples
-- Simple Text Mining on Existing Data from flat file
DROP TABLE "CBASTO"."tm.tb.awards"; 

CREATE COLUMN TABLE "CBASTO"."tm.tb.awards" 
(
"FEDERAL_AWARD_ID_NUMBER" NVARCHAR(10), 
"PDPI_NAME" NVARCHAR(500), 
"AWARD_DATE" DAYDATE CS_DAYDATE, 
"AWARD_YEAR" NVARCHAR(4), 
"AWARD_AMOUNT" INTEGER CS_INT, 
"AWARD_TITLE" NVARCHAR(5000), 
"AWARD_ABSTRACT" NCLOB MEMORY THRESHOLD 1000, 
"PROGRAM" NVARCHAR(500), 
"CONST" NVARCHAR(5), 
"COU" INTEGER CS_INT, 
"AWARDEE" NVARCHAR(500), 
"AWARDEE_STREET" NVARCHAR(500), 
"AWARDEE_CITY" NVARCHAR(500), 
"AWARDEE_COUNTY" NVARCHAR(500), 
"AWARDEE_STATE" NVARCHAR(500), 
"AWARDEE_COUNTRY" NVARCHAR(500), 
"AWARDEE_NAME" NVARCHAR(500), 
PRIMARY KEY ("FEDERAL_AWARD_ID_NUMBER")
);


-- Insert NCLOB values 
INSERT INTO "CBASTO"."tm.tb.awards" VALUES (
    '1332740', 'Jennifer B Martiny', '27.06.2013', 2013, 823576
,'Collaborative proposal: Cyanophage-Synechococcus interactions in complex communities',
'Viral-induced mortality of marine microorganisms alters the quantity and quality of pools of dissolved organic matter in the oceans shuttling organic matter back into the microbial loop and away from the larger marine food web. A major hindrance to understanding the role of viruses in biogeochemical cycling is that we know surprisingly little about which viruses infect which bacteria in the marine environment. In this project a network-based framework will be used to investigate marine phage-bacteria interactions in complex multispecies communities. The research focuses on cyanophages viruses that infect Synechococcus an ecologically important cyanobacterium in the oceans. There are three parts of the project. The first part will identify genetic signatures of cyanophage-Synechococcus interactions by using laboratory evolution experiments and genomic sequencing. The second part will examine the temporal and spatial diversity of these candidate interaction genes in natural cyanophage populations by comparing the full genome sequences of hundreds of isolates previously collected over many years. The third part will adapt the new method of viral-tagging to natural host populations to characterize cyanophage-Synechococcus interaction networks in the environment. <br/><br/>Intellectual Merit: The role of viruses in global marine biogeochemical cycles depends on viral-induced mortality rates which have been estimated to vary widely. The pattern and dynamics of who infects whom are central to our understanding of these rates as well as the role viruses play in marine nutrient cycling. This project will also contribute generally to our knowledge about viral diversity. The vast majority of marine viral sequences are not similar to any known diversity and it is reasonable to conclude that many of these genes have to do with host recognition and infection. Finally this project will develop a method of characterizing phage-bacteria interactions in natural diverse microbial communities thereby opening avenues for similar studies of viruses in other environments.<br/><br/>Broader Impacts: The project will provide training for 15 undergraduate students (including students from the California Alliance for Minority Participation in Science Engineering and Mathematics) 2 graduate students and a postdoc. The project will also build on a science-education internship program that was developed with Crystal Cove State Park in California. The Park is host to more than 1.2 million visitors and 10000 K-12 students each year. The outcome of this program will be topical science teaching kits that reside in the Marine Research Facility of the Park to be used by middle and high school teachers and students. These kits will connect marine microbiological research to the standards-based curricula of California and National Science Standards educate the public on this NSF research and assist in the training of Science Technology Engineering and Math (STEM) K-12 teachers. The results will be disseminated at national conferences including American Educational Researchers Association (AERA) and National Association of Research on Science Teaching (NARST) while the curriculum and video productions will be hosted on the website of the UCI Center for Learning in the Arts Sciences and Sustainability.'
, 'BIOLOGICAL OCEANOGRAPHY', 'Count', 1, 'UNIVERSITY OF CALIFORNIA IRVINE', '5171 California Avenue Ste 150', 'IRVINE','','CA','US', 'University of California-Irvine');

INSERT INTO "CBASTO"."tm.tb.awards" VALUES (
    '1308299', 'Justin Frantz','27.06.2013','2013', '300000',
 'QGP Strong Coupling Mechanisms and Jet Modification Via Direct Photon-Jet Probes RHIC-PHENIX vs. LHC-ATLAS', 'The Quark Gluon Plasma discovered at the Relativistic Heavy Ion Collider (RHIC) and now also studied at the Large Hadron Collider (LHC) has incredible properties due to its strongly interacting nature   This award will fund studies of these strong interactions using very high energy versions of X-rays called direct photons produced in the same collisions that can penetrate the plasma and can thus provide important information  These photons can be compared with quarks produced at similar high energies but which should interact more strongly like the other quark constituents of the plasma  In the project this will be done through studying correlations between photons and hadrons which are particles made of quarks  Measurements of these correlations will be performed primarily using the PHENIX experiment at RHIC  The specific goal of these analysis studies will be understanding the newly discovered enhancement of a certain type of particle produced by the above mentioned quarks because of the plasma at both RHIC with PHENIX and also at the ATLAS experiment at the LHC   For this reason our data analysis will include comparisons to and some limited research activities using the ATLAS experiment as well  In addition to these analysis projects the investigators group at Ohio University will support the upgrade of computing analysis hardware of PHENIX through operation of the PHENIX Sub-Detector called the Lead-Glass Calorimeter Detector as well as through leadership of groups and projects of detector development and analysis  The project results in a number of broad benefits to society beyond the important goal of educating and training students  The PI maintains organizations in the state of Ohio and beyond to exchange Heavy Ion knowledge  International collaboration among nuclear physicists around the world is strengthened  Furthermore the project contributes to the development of future computing in the nation  Finally the investigator contributes to the improvement of physics teaching related to the above research at Ohio University and in the Appalacian region by developing Active Learning classroom techniques', 'NUCLEAR', 'Count',
 1, 'OHIO UNIVERSITY','108 CUTLER HL','ATHENS','Athens','OH','US','Ohio University'
);