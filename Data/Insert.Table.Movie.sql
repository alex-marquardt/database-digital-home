/***
* Insert movies into Movie-tabel and movies genres into MovieGenre-tabel.
**/

BEGIN TRANSACTION InsertMoviesTransaction
	BEGIN TRY
		USE [MovieLibrary]

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('8 Femmes', 2002, 106, 11, 'I det store hus boede husets herre (der nu ligger død i sin seng med en kniv i ryggen) sammen med sin aristokratiske istap af en kone, hendes bindegale gammeljomfrusøster, hans egen fristende farlige erotikmagnet af en søster, hans rapkæftede dulle af en datter, steddatteren, den bly viol af en stuepige der er diskret leverandør af seksuelle specialiteter... og alt det andet godtfolk, der hører til enhver husholdning. Alle otte kvinder har hver især syntes at husets herre var en plageånd - så nu hvor han er chokerende død, rasler familiens spøgelser ikke længere i skabene, de fiser rundt i fuld vigør i hele huset, så anklager og pinlige afsløringer vælter frem.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Crime" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('300', 2006, 111, 15, 'Filmatiseringen af det episke tegneseriealbum af Frank Miller bombarderer skærmen med blod, torden og en ærefrygtindgydende visuel stil, der følger forlægget tæt og er en blanding af liveaction og CGI. Genfortællingen af oldtidens slag ved Thermopylæ skildrer den kolossale kamp, hvor kong Leonidas og 300 spartanere kæmpede til døden mod Xerxes og hans enorme hær af persere. Oplev historien med kniven for struben. Og se filmkunst med slag i.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "War" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('After the Sunset', 2004, 93, 7, 'Den charmerende mestertyv, Max Burdett, og hans smukke medsammensvorne, Lola, er netop ankommet til den idylliske Paradise Island på Bahamas for at nyde livet i fulde drag. Parret har netop fået afsat deres seneste bytte – den anden af de tre verdensberømte Napoleon Diamanter. Men lykken varer kort, for den arbejdsomme FBI agent, Stan Lloyd, er lige i hælene på Max og Lola. Lloyd har i årevis jagtet makkerparret, men på forunderlig vis er det altid lykkedes Max og Lola at undgå lovens lange arm. Samtidig lurer den lokale gangster, Kingpin, i kulissen. Han vil også gerne have fingrene i diamanten.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Amos & Andrew', 1993, 94, 15, 'Andrew er en prisbelønnet og anset forfatter, som er taget på ferie fra storbyen. Amos er en lille forbryder som er taget på ferie fra sin hjerne. Normalt ville deres verdener aldrig mødes. Men nu bliver Andrew uskyldigt anklaget for indbrud og havner midt i et hysterisk gidseldrama. Sammen tvinges de til at flygte fra gale naboer og skydegale politifolk, som har deres klare ordre: ”Skyd først – og stil spørgsmål bagefter”.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Banana Joe', 1982, 92, 0, 'Banana Joe lever lykkeligt i en tropisk landsby i Afrika, der endnu ikke er blevet forpestet af hårdhudede virksomheder, korruption, stoffer, bander eller andre sygdomme fra det moderne samfund. En dag tager Banana Joe sin banan-båd til den lokale handelsstation, hvor han får at vide, at han nu behøver en tilladelse for at betjene båden. Rimeligt villig til at imødekomme denne umiddelbart simple formalitet, drager Banana Joe af sted til storbyen for at skaffe dette vigtige stykke papir. På sin vej til at skaffe tilladelsen opdager han for første gang fjernsyn, møder skurke og bliver forelsket i Dorianne, en smuk ung cabaret sangerinde.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Battleship', 2012, 131, 15, 'Krigsskibe fra alle allierede lande omkring Stillehavet er samlet til RIMPAC-øvelse ved Hawaii, da en invasion af fjendtlige rumvæsener slår ned i havet. Radarinstallationerne går ned og de teknisk avancerede fartøjer skal pludselig kæmpe i blinde mod den teknologisk overlegne fjende. Ombord på de endnu kampklare skibe må besætningen tænke hurtigt.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Science-Fiction" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Charlies Angles 2 - Uden hæmninger', 2003, 103, 15, 'Charlies Engle går undercover for at finde to ikke helt almindelige forsvundne ringe, der indeholder værdifuld information, der afslører den sande identitet på alle personer, der har benyttet et vidne beskyttelses-program. Da vidner på mystisk vis dør er det kun englene, der kan stoppe bagmanden ved hjælp af mesterlige maskeringer, højt udviklet teknologi og ikke mindst vovemod.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Daredevil', 2003, 103, 11, 'Da Matt Murdock er 12 år gammel, bliver hans far myrdet og han selv oversprøjtes med kemikalier og mister synet. Efter ulykken skærpes Matts øvrige sanser ekstremt og i det skjulte udvikler han sine overmenneskelige evner. Som voksen bliver han advokat, men om natten forvandler han sig til DAREDEVIL, en maskeret hævner, der iskoldt skaber retfærdighed over for storbyens forbrydere, når civilisationens regler ikke slår til. En dag møder han den smukke og ellers handlekraftige Elektra, men da hun trues på livet af den personificerede ondskab i skikkelse af Kingpin, får Matt/Daredevil uventet chancen for at slutte cirklen til sin egen fortid... Det er tid til at afslutte et gammelt regnskab.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Den store dag', 2005, 90, 0, 'Bryllupsarrangøren Anne har sammen med vennen Jesper åbnet det lille firma "Den store dag". De har ikke ret mange kunder, så de sætter alt ind på at score kjendis-brylluppet mellem to af værterne fra Morgen-tv. Samtidig er Anne ved at planlægge sit eget bryllup - med knap så stor entusiasme.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Romance" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Du almægtige, Evan', 2007, 96, 7, 'Evan er lige blevet valgt til kongressen og sammen med familien, flytter han fra Buffalo til forstæderne i det nordlige Virginia. Men hans nye liv bliver vendt brat på hovedet, da Gud viser sig for ham og beordrer ham til at bygge en ark. Evans noget forbavsede familie kan ikke helt finde ud af, om han har en gevaldig midtvejskrise, eller om han har haft en åbenbaring af bibelske dimensioner.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Guardians of the Galaxy', 2014, 116, 11, 'I Guardians of the Galaxy følger vi Peter Quill fra jorden, der efter at have stjålet en mystisk kugle i en del af en anden galakse, nu er hovedmålet for en mandejagt. Jagten ledes af skurken Ronan the Accuser. For at kæmpe mod Ronan og hans håndlangere, samler Peter Quill et hold af rumhelte. Holdet går under navnet Guardians of the Galaxy, og målet er intet mindre end at redde verden.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Science-Fiction"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og De Vises Sten', 2001, 147, 11, 'Harry Potter er en forældreløs dreng, der bor hos sin moster, onkel og fætter. En dag modtager han et brev, der fortæller, at han er optaget på Hogwarts - en skole for magi og trolddom. Harry får nye venner på skolen, hvor de sammen kæmper mod sære og uhyggelige væsener i et eventyrligt univers.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og Hemmelighedernes Kammer', 2002, 155, 11, 'Biler flyver, træer slår igen, og en mystisk alf kommer for at advare Harry Potter her i begyndelsen af andet år på hans fantastiske færd i troldmandskunstens verden. Dette år på Hogwarts er der talende edderkopper, breve der skælder ud, og Harrys egen foruroligende evne til at tale medslanger, hvilket får hans venner til at vende sig mod ham. Fra duelklubber til løbske smashere - Det bliver et år med eventyr og farer, da en blodig skrift på væggen bekendtgør, at Hemmelighedernes Kammer er blevet åbnet. For at redde Hogwarts må Harry, Ron og Hermione mobilisere alle deres magiske evner og mod i denne fængslende filmatisering af J.K. Rowlings anden bog. Bered dig på at blive underholdt og forstenet, når Harry Potter viser, at han er mere end blot en troldmand, han er en helt!')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og Fangen fra Azkaban', 2004, 136, 11, 'Harry er blevet 13 år og tilbringer en lang og kedelig sommerferie hos sin skrækkelige familie Dursley. Han stikker dog af, men tør ikke tage til Hogwarts, da han samtidig har brudt reglen om, at man ikke må udøve magi, når man er blandt Mugglerne. Men efter en farlig fange - Sirius Black - er flygter fra Azkaban-fængslet, er Hogwarts det eneste sted Harry kan være i sikkerhed.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og Flammernes Pokal', 2005, 150, 11, 'Harry Potter må acceptere på mystisk vis at være blevet udvalgt til at kæmpe i den prestigefyldte Magiske Trekamp turnering. En spændende international konkurrence, hvor han skal kæmpe mod ældre og mere erfarne studenter fra Hogwarts og to rivaliserende europæiske troldmands-skoler. I mellemtiden sender tilhængerne af Harrys nemesis, den onde Lord Voldemort, en chokbølge af frygt gennem troldmandsverdenen, da hans mærke Mørkets tegn bliver vist på himlen ved Quidditch World Cupen for at signalere Voldemorts tilbagekomst. Men for Harry er dette ikke de eneste sindsoprivende nyheder, som giver ham sved på panden - han mangler også en date til Hogwarts Julebal.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og Fønixordenen', 2007, 133, 11, 'Det bliver endnu et spændende semester for den unge Harry Potter. Han vender tilbage til sit femte år på Hogwarts, skolen for heksekunster og trylleri og opdager, at trolddomsmiljøet ikke vil erkende, at Lord Voldemort er genopstået. Samtidig har Ministeren for Magi, Cornelius Fudge, indsat en ny rektor på Hogwarts. Han vil ikke have, at professor Dumbledore går rundt og fortæller eleverne, at Voldemort er tilbage. Eleverne har også fået en ny professor i Forsvar mod Mørkets Kræfter, professor Dolores Umbridge, og hun er ikke sådan at bide skeer med. Harry, Hermione og Ron danner en hemmelig læseklub, Dumbledores Army, hvor de sammen med andre elever prøver at lære de svære trylleformularer, der måske kan beskytte dem mod den onde Lord Voldemort.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og Halvblodsprinsen', 2009, 153, 11, 'Voldemort har strammet sit greb om både Mugglerne og troldmandsverdenen, og Hogwarts er ikke længere et sikkert sted at opholde sig. Harry har mistanke om, at faren ligger inden for skolens mure, men Dumbledore er mere opsat på at forberede ham på den endelige kamp, som han ved nærmer sig. Sammen forsøger de at finde den nøgle, der kan afsløre Voldemorts forsvar, og for at gøre dette rekrutterer Dumbledore sin gamle ven og kollega, levemanden Professor Horatio Schnobbevom, som menes at have vitale informationer, der kan bruges mod Voldemort.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og Dødsregalierne - del 1', 2010, 146, 11, 'Mørkets kræfter har overtaget Hogwarts, og tiden er kommet til, at Harry, Hermione og Ron må stå på egne ben. Sammen drager de ud for at finde og tilintetgøre Horcruxerne, der er hemmeligheden bag Voldemorts udødelighed. Men undervejs opdager Harry den glemte legende om Dødsregalierne, som kan afgøre udfaldet af hans endelige opgør med Voldemort. De tre er afhængige af hinanden, men kan de også overvinde de mørke kræfter, der forsøger at splitte dem indefra. Første del af afslutningen på Harry Potter-eventyret.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og Dødsregalierne - del 2', 2011, 130, 11, 'I anden del af den episke finale bliver kampen mellem de gode og de onde kræfter i troldmandsverdenen til en regulær krig. Alt er på spil og ingen kan føle sig sikre. Det kan blive Harry Potter, der skal betale den ultimative pris, da den endelig konfrontation med Lord Voldemort nærmer sig.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Jackass - The Movie', 2002, 87, 11, 'Drengerøvene udfører stunts, som ingen ville lade dem slippe af sted med på tv.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('King Kong', 2005, 187, 11, 'I 1930erne får rygter om en gigantisk menneskeabe kaldet King Kong en gruppe forskere med smag for eventyr til at udforske isoleret ø ved Sumatra. Øen viser sig at være beboet af både en enorm abe og flere fortidsdyr. Forskerne beslutter sig for at indfange Kong og bringe ham hjem til New York. Men den mægtige King Kong er ikke sådan lige at lægge i lænker.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Thriller"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Liberty Stand Still', 2002, 92, 15, 'Liberty Wallace driver en lukrativ våbenforretning. Hun er smuk, smart og rig og i dag er hun på vej hen i teatret for at se sin elsker optræde. Men da hun stopper ved en pølsevogn ringer hendes telefon. En mand ved navn Joe fortæller, at der er en bombe i pølsevognen og at den eksploderer hvis hun prøver at flygt. Hendes elsker er desuden spændt fast til en bombe i nærheden! Joe vil have hævn for sin datters drab, der sker på grund af unges alt for lette adgang til våben.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Thriller"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Pirates of the Caribbean - Den sorte forbandelse', 2003, 137, 11, 'I 1700-tallet vrimler det med sørøvere i Caribien. Til den charmerende del af dem hører kaptajn Jack Sparrow, en flamboyant eventyrer, som er god nok på bunden, hvis man iøvrigt kan finde den. Der er andre, der er meget værre. Det gælder f.eks. den totalt nederdrægtige kaptajn Barbossa, som beviser, at tyv er tyv værst, da han stjæler Sparrows skib, "Black Pearl", og derpå angriber byen Port Royal og kidnapper guvernørens smukke datter, Elizabeth.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Pirates of the Caribbean 2 - Død mands kiste', 2006, 151, 11, 'Jack Sparrow har en blodsgæld, som han skal betale, da han har solgt sin sjæl til Davy Jones, den legendariske kaptajn på Den Flyvende Hollænder. Men Jack Sparrow giver sig ikke uden kamp. På rejsen kastes Will Turner og den smukke Elizabeth Swann ud i en hvirvelvind af ulykker, når de sammen med Jack jagter den sagnomspundne Død Mands Kiste, der er det eneste, der kan redde ham fra evig forbandelse.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Pirates of the Caribbean 3 - Ved verdens ende', 2007, 169, 11, 'Lige når der er allermest brug for den charmerende piratkaptajn Jack Sparrow er han væk, opslugt af søuhyret Kraken, som styres af Davy Jones. Jack er den sidste af de nu fyrster i piraternes broderskab, der mangler, så de kan samles for at udkæmpe det sidste slag for piraternes frihed. Jacks gamle besætning fra The Black Pearl med Will Turner og Elizabeth Swann i spidsen, har allieret sig med kaptajn Barbossa og sammen begiver de sig ud på en desperat redningsaktion. Og for at nå deres mål, er de rede til at sejle til verdens ende. Eller i hvert fald til Sydøstasien, hvor de må konfrontere Singapores snedigste pirat, Sao Feng.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Reign of Assassins', 2010, 103, 15, 'Oldtidens Kina - en hemmelig verden af kampspecialister og hitmen. Da den kvindelige lejemorder Zeng Jing beslutter at trække sig tilbage og vie sit liv til at redde resterne af en mytlogisk buddhistisk munk, får hun et helt hold af mordere efter sig. Og snart må hun kæmpe både for sit liv og for sin bagage.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Runner Runner', 2013, 88, 11, 'Da et poker-site frarøver den fattige matematikstuderende Richie alle hans uddannelsespenge, tager han sagen i egen hånd. Snart sidder Richie på et fly på vej til Costa Rica for at opsøge manden bag sitet, milliardæren Ivan Block. Da de endelig mødes, imponeres Ivan af den unge mands gå-på-mod og beslutter sig for at tage ham under sine vinger. Richie oplever pludseligt det liv i sus og dus, som han altid har drømt om, men samtidig skal han navigere rundt i industriens underverden, der er lige så farlig, som den er luksuriøs. Da Richie pludseligt kontaktes af FBI, må han erkende, at han er ude, hvor han ikke kan bunde.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Thriller"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Ronin', 1998, 119, 15, 'I en verden, hvor loyalitet er noget man skal gøre sig fortjent til, og forræderi er en livsstil, mødes en gruppe tidligere efterretningsofficerer for at stille deres ekspertise i overvågning, efterretning og nærkamp til rådighed for højstbydende. Det viser sig at være IRA, der via sin kontakt, Deidre, sender den lille private hær til Cannes, hvor de skal bemægtige sig en attachemappe med et ukendt indhold.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Thriller"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Saving Private Ryan', 1998, 169, 15, 'En internationalt anerkendt film - både af filmkritikere og af publikum. Steven Spielbergs Saving Private Ryan er en uforglemmelig filmoplevelse der har efterladt et dybt og varigt indtryk over hele verden. Historien fortælles fra en deling amerikanske soldaters perspektiv og begynder med 2. Verdenskrigs historiske D-dagsinvasion. Derefter bevæger den sig videre over stranden da mændene begiver sig ud på en farlig specialmission. Kaptajn John Miller skal føre sine folk bag fjendens linjer for at finde menig James Ryan, hvis tre brødre er blevet dræbt i krigen. Stillet over for umulige odds begynder mændene at sætte spørgsmålstegn ved deres ordrer. Hvorfor skal otte mænd risikere livet for at redde en enkelt? Omgivet af krigens brutale realiteter må hver mand søge efter sit eget svar - og efter styrken til at overvinde en usikker fremtid med ære, anstændighed og tapperhed.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "War"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Scream', 1996, 107, 15, 'Sidney er en almindelig teenager. Med et ret almindeligt liv. Moderen blev brutalt myrdet sidste år... men blev den rette mand dømt? Snart begynder et sandt helvede af psykisk terror og bestialske nedslagninger. Ingen er fredet i et spil, hvor der kun myrdes for at myrde.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Horror"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Mystery"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Scream 2', 1997, 116, 15, 'Efter at have overlevet massakren i Woodsboro, flytter Sidney til Cincinnati for at gå på universitetet. Fortiden har hun lagt bag sig... lige indtil den på grusomste vis indhenter hende igen. Masken og kniven efterlader en syndflod af blod og maltrakterede kroppe. Spørgsmålet er, om Sidney denne gang får lov at undslippe.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Horror"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Mystery"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Spider-man', 2002, 121, 11, 'Peter Parker er en genert dreng, der går på gymnasiet og drømmer om den smukke Mary Jane. En dag bliver bidt af en genmanipuleret edderkop, og det giver ham overmenneskelige kræfter. Da hans onkel Ben kommer ud for en ulykke, ændrer Peter syn på sine evner og bliver en superhelt. Inden længe står han overfor en stor fjende, videnskabsmanden Norman Osborn, der under et eksperiment har sprængt sit ansigt i stykker, men samtidig har opnået stor styrke og intelligens.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('State of Play', 2009, 123, 11, 'En ulykke eller måske et selvmord på en metrostation i Washington er ved at sætte punktum for en politisk karriere. Sladderen kører om en affære mellem kongresmedlemmet og hans nu afdøde assistent, og over for studiekammeraten og journalisten Cal McAffrey lægger Stephen Collins heller ikke skjul på, at det er sandt. Men Collins har mistanke om en forbrydelse - og da tilfældet vil, at McAffrey forbinder dette med et andet mystisk mord i Washington, begynder der at tegne sig et billede af et komplot. Et komplot for at tilsvine Collins, inden han kan rejse alvorlige anklager mod koncernen PointCorp, der står foran at vinde en lukrativ kontrakt med det amerikanske forsvar. Men i en verden, hvor dagens aviser skal præsentere en sælgende overskrift hver morgen, og hvor politikere kan blive skabt eller ødelagt af netop sådan en overskrift, er spørgsmålet, hvem der har brug for hvem.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Thriller"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Tears of the Sun', 2003, 115, 15, 'A.K. Walthers er krigshelt og officer i det amerikanske frømanskorps – The Navy S.E.A.L.S. Hans enhed sendes til det krigshærgede Nigeria for at redde den amerikanske statsborger Dr. Lena Kendricks ud af landet, inden det er for sent. Men da den hårdhudede Walthers og hans enhed når frem, nægter Hendricks at forlade sin farm, der fungerer som tilflugtsted for krigens ofre. Tværtimod bønfalder hun Walthers at eskortere flygtningene på en farefuld flugt gennem junglen mod Camerouns grænse.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "War"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Black Heart', 2009, 93, 15, 'Terry får et nyt liv, da han gennemgår en hjertetransplantation. Men han har fået meget mere end bare et nyt hjerte. Terry begynder at få mystiske og uhyggelige hallucinationer, og det går op for ham, at hjertedonoren blev myrdet. Morderne er stadig på fri fod, og de stopper ikke, før de også har slået Terry ihjel...')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Horror"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Day after Tomorrow', 2004, 120, 11, 'Den globale opvarmning udløser en stribe naturkatastrofer og kaster Jorden ud i en ny istid. Klimatologen Jack Hall, som forgæves har forsøgt at advare de ansvarlige myndigheder om den overhængende fare, må nu sætte sit eget liv på spil og i et nervepirrende kapløb med tiden rejse til et oversvømmet og tilfrosset New York for at redde sin voksne søn, Sam.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Dark Knight', 2012, 158, 11, 'Efter at have påtaget sig skylden for den offentlige anklager Harvey Dents død er en vanæret Batman på mystisk vis forsvundet. Men med ankomsten af en snedig klatretyv og den skånselsløse galning Bane tvinges Bruce Wayne frem af sit selvvalgte eksil og ud i den endelige kamp for Gotham Citys overlevelse. Dette er det afsluttende kapitel i Christopher Nolans imponerende trilogi med Christian Bale som den kappeklædte helt.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Thriller"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Simpsons Film Festival - Beyond Blunderdome', 2002, 30, 7, 'Homer er til forpremiere på en ny film med Mel Ginson og giver den dårlige karakterer. Det ryster Mel, der derfor hyrer Homer til at være co-producer på filmen, som er en nyindspilning af "Mr. Smith kommer til Washington". Homer forvandler filmen til en blodig actionfilm, og det kommer til at stå Mel dyrt.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Animation"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Simpsons Film Festival - Itchy & Scratchy - The Movie', 2002, 30, 7, 'Ved et forældremøde på skolen, får Homer og Marge at vide, at de skal holde Bart i kort line, hvis han skal blive til noget her i livet. Senere sætter de Bart til at passe Maggie, som stikker af og smadrer bilen. Som straf forbyder Homer Bart at se den nye film med Itchy og Scratchy. Efter en lang og sej kamp må Bart give sig - og vi får et glimt ud i fremtiden, hvor Bart er blevet justitsminister.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Animation"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Simpsons Film Festival - 22 Short Films About Springfield', 2002, 30, 7, 'I dette afsnit får vi lov at møde nogle af seriens bipersoner i små klip. Blandt andet ser vi, at skoleinspektør Skinner inviterer skoledirektør Chamlers til middag, pastor Lovejoys hund overskrider Flandens plæne, og Milhouses far optræder i en Pulp Fiction-sekvens.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Animation"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Simpsons Film Festival - A Star is Burns', 2002, 30, 7, 'Springfield er værtsby for en filmfestival med gæstekritikeren Jay Sherman. Finalen bliver et opgør mellem en film om Barneys alkoholmisbrug og blærefilm af Mr. Burns. Det bliver Homer, som skal afgive den afgørende stemme.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Animation"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Unsaid', 2001, 105, 15, 'For 3 år siden begik hans søn selv-mord. Siden har Michael levet i selvbebrejdelsens bitre skyggeunivers. Han svigtede katastrofalt som far. Han svigtede professionelt som psykolog. Åh Gud. han skulle ha set alle faresignalerne. Men nu får han chancen for at hjælpe 17-årige Thomas, der har været indlagt siden han så sin far myrde sin mor. Han er lynende intelligent, men dybt traumatiseret, aggressiv og potentielt farlig. Michael skal vurdere om han er klar til at blive udskrevet. Michael er i tvivl. Han ved, Thomas skjuler noget for ham. Men Thomas sørger omhyg-geligt for at finde sig en kæreste. En sårbar ung pige, der behøver ham - og som er Michaels datter. For ikke at skuffe den dybt forelskede pige, erklærer han Thomas normal. Dermed svigter han fatalt igen. Som far og som psykolog.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Crime"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Mystery"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Unstoppable', 2004, 96, 15, 'Da Dean Cage træder ind i restauranten forveksler en gruppe forbrydere ham med den undercover narko-agent, de har lagt en fælde for. De overmander Dean og gi’r ham en indsprøjtning med XE, et nyt designerdrug, for at afhøre ham. XE er et ekstremt kraftigt mind control rusmiddel – med ekstremt kraftige bivirkninger: paranoia, voldelig og komplet uforudsigeligt reaktionsmønster. Når man sprøjter den slags lort ind i en tidligere elitesoldat med en lang, beskidt og blodig karriere bag sig, risikerer man at åbne Helvedets Porte.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Volcanno High', 2001, 120, 11, 'En actionfyldt historie ud over det sædvanlige begynder, da Kim Kyung-Soo igen tvinges til at flytte skole. Volcano High bliver den niende i rækken, fordi han ikke rigtigt har styr over sig selv og sine overnaturlige kræfter. Det bliver samtidig hans sværeste udfordring. Volcano High er landets hårdeste skole, hvor eleverne bruger mere tid på at træne kampsport end på almindelig fag. Det varer ikke længe, før de andre fornemmer Kims kræfter, og han bliver mod sin vilje inddraget i kampen mod den magtgale rektor. Rektoren vil ikke bare styre skolen, men hele verden ved hjælp af en magisk tekst.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Yamakasi', 2001, 91, 11, 'Yamakasi er filmen om en flok unge mænd fra Paris, alle fra forskellige baggrunde, som springer fra, over og på bygninger for sjov. Da en ung mand med svagt hjerte prøver på at lave et Yamakasi-stunt, men mislykkes og ender på hospitalet, beslutter sig de "rigtige" Yamakasier for at skaffe de mange penge, der er nødvendige for en hjerteoperation.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		COMMIT TRANSACTION InsertMoviesTransaction
	END TRY

	BEGIN CATCH
		ROLLBACK TRANSACTION InsertMoviesTransaction
	END CATCH 
GO