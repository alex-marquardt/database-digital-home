/***
* Insert movies into Movie-tabel and movies genres into MovieGenre-tabel.
**/

BEGIN TRANSACTION InsertMoviesTransaction
	BEGIN TRY
		USE [MovieLibrary]

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('8 Femmes', 2002, 106, 11, 'I det store hus boede husets herre (der nu ligger d�d i sin seng med en kniv i ryggen) sammen med sin aristokratiske istap af en kone, hendes bindegale gammeljomfrus�ster, hans egen fristende farlige erotikmagnet af en s�ster, hans rapk�ftede dulle af en datter, steddatteren, den bly viol af en stuepige der er diskret leverand�r af seksuelle specialiteter... og alt det andet godtfolk, der h�rer til enhver husholdning. Alle otte kvinder har hver is�r syntes at husets herre var en plage�nd - s� nu hvor han er chokerende d�d, rasler familiens sp�gelser ikke l�ngere i skabene, de fiser rundt i fuld vig�r i hele huset, s� anklager og pinlige afsl�ringer v�lter frem.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Crime" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('300', 2006, 111, 15, 'Filmatiseringen af det episke tegneseriealbum af Frank Miller bombarderer sk�rmen med blod, torden og en �refrygtindgydende visuel stil, der f�lger forl�gget t�t og er en blanding af liveaction og CGI. Genfort�llingen af oldtidens slag ved Thermopyl� skildrer den kolossale kamp, hvor kong Leonidas og 300 spartanere k�mpede til d�den mod Xerxes og hans enorme h�r af persere. Oplev historien med kniven for struben. Og se filmkunst med slag i.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "War" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('After the Sunset', 2004, 93, 7, 'Den charmerende mestertyv, Max Burdett, og hans smukke medsammensvorne, Lola, er netop ankommet til den idylliske Paradise Island p� Bahamas for at nyde livet i fulde drag. Parret har netop f�et afsat deres seneste bytte � den anden af de tre verdensber�mte Napoleon Diamanter. Men lykken varer kort, for den arbejdsomme FBI agent, Stan Lloyd, er lige i h�lene p� Max og Lola. Lloyd har i �revis jagtet makkerparret, men p� forunderlig vis er det altid lykkedes Max og Lola at undg� lovens lange arm. Samtidig lurer den lokale gangster, Kingpin, i kulissen. Han vil ogs� gerne have fingrene i diamanten.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Amos & Andrew', 1993, 94, 15, 'Andrew er en prisbel�nnet og anset forfatter, som er taget p� ferie fra storbyen. Amos er en lille forbryder som er taget p� ferie fra sin hjerne. Normalt ville deres verdener aldrig m�des. Men nu bliver Andrew uskyldigt anklaget for indbrud og havner midt i et hysterisk gidseldrama. Sammen tvinges de til at flygte fra gale naboer og skydegale politifolk, som har deres klare ordre: �Skyd f�rst � og stil sp�rgsm�l bagefter�.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Banana Joe', 1982, 92, 0, 'Banana Joe lever lykkeligt i en tropisk landsby i Afrika, der endnu ikke er blevet forpestet af h�rdhudede virksomheder, korruption, stoffer, bander eller andre sygdomme fra det moderne samfund. En dag tager Banana Joe sin banan-b�d til den lokale handelsstation, hvor han f�r at vide, at han nu beh�ver en tilladelse for at betjene b�den. Rimeligt villig til at im�dekomme denne umiddelbart simple formalitet, drager Banana Joe af sted til storbyen for at skaffe dette vigtige stykke papir. P� sin vej til at skaffe tilladelsen opdager han for f�rste gang fjernsyn, m�der skurke og bliver forelsket i Dorianne, en smuk ung cabaret sangerinde.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Battleship', 2012, 131, 15, 'Krigsskibe fra alle allierede lande omkring Stillehavet er samlet til RIMPAC-�velse ved Hawaii, da en invasion af fjendtlige rumv�sener sl�r ned i havet. Radarinstallationerne g�r ned og de teknisk avancerede fart�jer skal pludselig k�mpe i blinde mod den teknologisk overlegne fjende. Ombord p� de endnu kampklare skibe m� bes�tningen t�nke hurtigt.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Science-Fiction" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Charlies Angles 2 - Uden h�mninger', 2003, 103, 15, 'Charlies Engle g�r undercover for at finde to ikke helt almindelige forsvundne ringe, der indeholder v�rdifuld information, der afsl�rer den sande identitet p� alle personer, der har benyttet et vidne beskyttelses-program. Da vidner p� mystisk vis d�r er det kun englene, der kan stoppe bagmanden ved hj�lp af mesterlige maskeringer, h�jt udviklet teknologi og ikke mindst vovemod.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Daredevil', 2003, 103, 11, 'Da Matt Murdock er 12 �r gammel, bliver hans far myrdet og han selv overspr�jtes med kemikalier og mister synet. Efter ulykken sk�rpes Matts �vrige sanser ekstremt og i det skjulte udvikler han sine overmenneskelige evner. Som voksen bliver han advokat, men om natten forvandler han sig til DAREDEVIL, en maskeret h�vner, der iskoldt skaber retf�rdighed over for storbyens forbrydere, n�r civilisationens regler ikke sl�r til. En dag m�der han den smukke og ellers handlekraftige Elektra, men da hun trues p� livet af den personificerede ondskab i skikkelse af Kingpin, f�r Matt/Daredevil uventet chancen for at slutte cirklen til sin egen fortid... Det er tid til at afslutte et gammelt regnskab.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Den store dag', 2005, 90, 0, 'Bryllupsarrang�ren Anne har sammen med vennen Jesper �bnet det lille firma "Den store dag". De har ikke ret mange kunder, s� de s�tter alt ind p� at score kjendis-brylluppet mellem to af v�rterne fra Morgen-tv. Samtidig er Anne ved at planl�gge sit eget bryllup - med knap s� stor entusiasme.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Romance" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy" 

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Du alm�gtige, Evan', 2007, 96, 7, 'Evan er lige blevet valgt til kongressen og sammen med familien, flytter han fra Buffalo til forst�derne i det nordlige Virginia. Men hans nye liv bliver vendt brat p� hovedet, da Gud viser sig for ham og beordrer ham til at bygge en ark. Evans noget forbavsede familie kan ikke helt finde ud af, om han har en gevaldig midtvejskrise, eller om han har haft en �benbaring af bibelske dimensioner.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Guardians of the Galaxy', 2014, 116, 11, 'I Guardians of the Galaxy f�lger vi Peter Quill fra jorden, der efter at have stj�let en mystisk kugle i en del af en anden galakse, nu er hovedm�let for en mandejagt. Jagten ledes af skurken Ronan the Accuser. For at k�mpe mod Ronan og hans h�ndlangere, samler Peter Quill et hold af rumhelte. Holdet g�r under navnet Guardians of the Galaxy, og m�let er intet mindre end at redde verden.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action" 
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Science-Fiction"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og De Vises Sten', 2001, 147, 11, 'Harry Potter er en for�ldrel�s dreng, der bor hos sin moster, onkel og f�tter. En dag modtager han et brev, der fort�ller, at han er optaget p� Hogwarts - en skole for magi og trolddom. Harry f�r nye venner p� skolen, hvor de sammen k�mper mod s�re og uhyggelige v�sener i et eventyrligt univers.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og Hemmelighedernes Kammer', 2002, 155, 11, 'Biler flyver, tr�er sl�r igen, og en mystisk alf kommer for at advare Harry Potter her i begyndelsen af andet �r p� hans fantastiske f�rd i troldmandskunstens verden. Dette �r p� Hogwarts er der talende edderkopper, breve der sk�lder ud, og Harrys egen foruroligende evne til at tale medslanger, hvilket f�r hans venner til at vende sig mod ham. Fra duelklubber til l�bske smashere - Det bliver et �r med eventyr og farer, da en blodig skrift p� v�ggen bekendtg�r, at Hemmelighedernes Kammer er blevet �bnet. For at redde Hogwarts m� Harry, Ron og Hermione mobilisere alle deres magiske evner og mod i denne f�ngslende filmatisering af J.K. Rowlings anden bog. Bered dig p� at blive underholdt og forstenet, n�r Harry Potter viser, at han er mere end blot en troldmand, han er en helt!')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og Fangen fra Azkaban', 2004, 136, 11, 'Harry er blevet 13 �r og tilbringer en lang og kedelig sommerferie hos sin skr�kkelige familie Dursley. Han stikker dog af, men t�r ikke tage til Hogwarts, da han samtidig har brudt reglen om, at man ikke m� ud�ve magi, n�r man er blandt Mugglerne. Men efter en farlig fange - Sirius Black - er flygter fra Azkaban-f�ngslet, er Hogwarts det eneste sted Harry kan v�re i sikkerhed.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og Flammernes Pokal', 2005, 150, 11, 'Harry Potter m� acceptere p� mystisk vis at v�re blevet udvalgt til at k�mpe i den prestigefyldte Magiske Trekamp turnering. En sp�ndende international konkurrence, hvor han skal k�mpe mod �ldre og mere erfarne studenter fra Hogwarts og to rivaliserende europ�iske troldmands-skoler. I mellemtiden sender tilh�ngerne af Harrys nemesis, den onde Lord Voldemort, en chokb�lge af frygt gennem troldmandsverdenen, da hans m�rke M�rkets tegn bliver vist p� himlen ved Quidditch World Cupen for at signalere Voldemorts tilbagekomst. Men for Harry er dette ikke de eneste sindsoprivende nyheder, som giver ham sved p� panden - han mangler ogs� en date til Hogwarts Julebal.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og F�nixordenen', 2007, 133, 11, 'Det bliver endnu et sp�ndende semester for den unge Harry Potter. Han vender tilbage til sit femte �r p� Hogwarts, skolen for heksekunster og trylleri og opdager, at trolddomsmilj�et ikke vil erkende, at Lord Voldemort er genopst�et. Samtidig har Ministeren for Magi, Cornelius Fudge, indsat en ny rektor p� Hogwarts. Han vil ikke have, at professor Dumbledore g�r rundt og fort�ller eleverne, at Voldemort er tilbage. Eleverne har ogs� f�et en ny professor i Forsvar mod M�rkets Kr�fter, professor Dolores Umbridge, og hun er ikke s�dan at bide skeer med. Harry, Hermione og Ron danner en hemmelig l�seklub, Dumbledores Army, hvor de sammen med andre elever pr�ver at l�re de sv�re trylleformularer, der m�ske kan beskytte dem mod den onde Lord Voldemort.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og Halvblodsprinsen', 2009, 153, 11, 'Voldemort har strammet sit greb om b�de Mugglerne og troldmandsverdenen, og Hogwarts er ikke l�ngere et sikkert sted at opholde sig. Harry har mistanke om, at faren ligger inden for skolens mure, men Dumbledore er mere opsat p� at forberede ham p� den endelige kamp, som han ved n�rmer sig. Sammen fors�ger de at finde den n�gle, der kan afsl�re Voldemorts forsvar, og for at g�re dette rekrutterer Dumbledore sin gamle ven og kollega, levemanden Professor Horatio Schnobbevom, som menes at have vitale informationer, der kan bruges mod Voldemort.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og D�dsregalierne - del 1', 2010, 146, 11, 'M�rkets kr�fter har overtaget Hogwarts, og tiden er kommet til, at Harry, Hermione og Ron m� st� p� egne ben. Sammen drager de ud for at finde og tilintetg�re Horcruxerne, der er hemmeligheden bag Voldemorts ud�delighed. Men undervejs opdager Harry den glemte legende om D�dsregalierne, som kan afg�re udfaldet af hans endelige opg�r med Voldemort. De tre er afh�ngige af hinanden, men kan de ogs� overvinde de m�rke kr�fter, der fors�ger at splitte dem indefra. F�rste del af afslutningen p� Harry Potter-eventyret.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Harry Potter og D�dsregalierne - del 2', 2011, 130, 11, 'I anden del af den episke finale bliver kampen mellem de gode og de onde kr�fter i troldmandsverdenen til en regul�r krig. Alt er p� spil og ingen kan f�le sig sikre. Det kan blive Harry Potter, der skal betale den ultimative pris, da den endelig konfrontation med Lord Voldemort n�rmer sig.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Jackass - The Movie', 2002, 87, 11, 'Drenger�vene udf�rer stunts, som ingen ville lade dem slippe af sted med p� tv.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('King Kong', 2005, 187, 11, 'I 1930erne f�r rygter om en gigantisk menneskeabe kaldet King Kong en gruppe forskere med smag for eventyr til at udforske isoleret � ved Sumatra. �en viser sig at v�re beboet af b�de en enorm abe og flere fortidsdyr. Forskerne beslutter sig for at indfange Kong og bringe ham hjem til New York. Men den m�gtige King Kong er ikke s�dan lige at l�gge i l�nker.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Thriller"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Liberty Stand Still', 2002, 92, 15, 'Liberty Wallace driver en lukrativ v�benforretning. Hun er smuk, smart og rig og i dag er hun p� vej hen i teatret for at se sin elsker optr�de. Men da hun stopper ved en p�lsevogn ringer hendes telefon. En mand ved navn Joe fort�ller, at der er en bombe i p�lsevognen og at den eksploderer hvis hun pr�ver at flygt. Hendes elsker er desuden sp�ndt fast til en bombe i n�rheden! Joe vil have h�vn for sin datters drab, der sker p� grund af unges alt for lette adgang til v�ben.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Thriller"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Pirates of the Caribbean - Den sorte forbandelse', 2003, 137, 11, 'I 1700-tallet vrimler det med s�r�vere i Caribien. Til den charmerende del af dem h�rer kaptajn Jack Sparrow, en flamboyant eventyrer, som er god nok p� bunden, hvis man i�vrigt kan finde den. Der er andre, der er meget v�rre. Det g�lder f.eks. den totalt nederdr�gtige kaptajn Barbossa, som beviser, at tyv er tyv v�rst, da han stj�ler Sparrows skib, "Black Pearl", og derp� angriber byen Port Royal og kidnapper guvern�rens smukke datter, Elizabeth.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Pirates of the Caribbean 2 - D�d mands kiste', 2006, 151, 11, 'Jack Sparrow har en blodsg�ld, som han skal betale, da han har solgt sin sj�l til Davy Jones, den legendariske kaptajn p� Den Flyvende Holl�nder. Men Jack Sparrow giver sig ikke uden kamp. P� rejsen kastes Will Turner og den smukke Elizabeth Swann ud i en hvirvelvind af ulykker, n�r de sammen med Jack jagter den sagnomspundne D�d Mands Kiste, der er det eneste, der kan redde ham fra evig forbandelse.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Pirates of the Caribbean 3 - Ved verdens ende', 2007, 169, 11, 'Lige n�r der er allermest brug for den charmerende piratkaptajn Jack Sparrow er han v�k, opslugt af s�uhyret Kraken, som styres af Davy Jones. Jack er den sidste af de nu fyrster i piraternes broderskab, der mangler, s� de kan samles for at udk�mpe det sidste slag for piraternes frihed. Jacks gamle bes�tning fra The Black Pearl med Will Turner og Elizabeth Swann i spidsen, har allieret sig med kaptajn Barbossa og sammen begiver de sig ud p� en desperat redningsaktion. Og for at n� deres m�l, er de rede til at sejle til verdens ende. Eller i hvert fald til Syd�stasien, hvor de m� konfrontere Singapores snedigste pirat, Sao Feng.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Adventure"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Reign of Assassins', 2010, 103, 15, 'Oldtidens Kina - en hemmelig verden af kampspecialister og hitmen. Da den kvindelige lejemorder Zeng Jing beslutter at tr�kke sig tilbage og vie sit liv til at redde resterne af en mytlogisk buddhistisk munk, f�r hun et helt hold af mordere efter sig. Og snart m� hun k�mpe b�de for sit liv og for sin bagage.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Runner Runner', 2013, 88, 11, 'Da et poker-site frar�ver den fattige matematikstuderende Richie alle hans uddannelsespenge, tager han sagen i egen h�nd. Snart sidder Richie p� et fly p� vej til Costa Rica for at ops�ge manden bag sitet, milliard�ren Ivan Block. Da de endelig m�des, imponeres Ivan af den unge mands g�-p�-mod og beslutter sig for at tage ham under sine vinger. Richie oplever pludseligt det liv i sus og dus, som han altid har dr�mt om, men samtidig skal han navigere rundt i industriens underverden, der er lige s� farlig, som den er luksuri�s. Da Richie pludseligt kontaktes af FBI, m� han erkende, at han er ude, hvor han ikke kan bunde.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Thriller"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Ronin', 1998, 119, 15, 'I en verden, hvor loyalitet er noget man skal g�re sig fortjent til, og forr�deri er en livsstil, m�des en gruppe tidligere efterretningsofficerer for at stille deres ekspertise i overv�gning, efterretning og n�rkamp til r�dighed for h�jstbydende. Det viser sig at v�re IRA, der via sin kontakt, Deidre, sender den lille private h�r til Cannes, hvor de skal bem�gtige sig en attachemappe med et ukendt indhold.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Thriller"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Saving Private Ryan', 1998, 169, 15, 'En internationalt anerkendt film - b�de af filmkritikere og af publikum. Steven Spielbergs Saving Private Ryan er en uforglemmelig filmoplevelse der har efterladt et dybt og varigt indtryk over hele verden. Historien fort�lles fra en deling amerikanske soldaters perspektiv og begynder med 2. Verdenskrigs historiske D-dagsinvasion. Derefter bev�ger den sig videre over stranden da m�ndene begiver sig ud p� en farlig specialmission. Kaptajn John Miller skal f�re sine folk bag fjendens linjer for at finde menig James Ryan, hvis tre br�dre er blevet dr�bt i krigen. Stillet over for umulige odds begynder m�ndene at s�tte sp�rgsm�lstegn ved deres ordrer. Hvorfor skal otte m�nd risikere livet for at redde en enkelt? Omgivet af krigens brutale realiteter m� hver mand s�ge efter sit eget svar - og efter styrken til at overvinde en usikker fremtid med �re, anst�ndighed og tapperhed.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "War"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Scream', 1996, 107, 15, 'Sidney er en almindelig teenager. Med et ret almindeligt liv. Moderen blev brutalt myrdet sidste �r... men blev den rette mand d�mt? Snart begynder et sandt helvede af psykisk terror og bestialske nedslagninger. Ingen er fredet i et spil, hvor der kun myrdes for at myrde.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Horror"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Mystery"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Scream 2', 1997, 116, 15, 'Efter at have overlevet massakren i Woodsboro, flytter Sidney til Cincinnati for at g� p� universitetet. Fortiden har hun lagt bag sig... lige indtil den p� grusomste vis indhenter hende igen. Masken og kniven efterlader en syndflod af blod og maltrakterede kroppe. Sp�rgsm�let er, om Sidney denne gang f�r lov at undslippe.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Horror"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Mystery"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Spider-man', 2002, 121, 11, 'Peter Parker er en genert dreng, der g�r p� gymnasiet og dr�mmer om den smukke Mary Jane. En dag bliver bidt af en genmanipuleret edderkop, og det giver ham overmenneskelige kr�fter. Da hans onkel Ben kommer ud for en ulykke, �ndrer Peter syn p� sine evner og bliver en superhelt. Inden l�nge st�r han overfor en stor fjende, videnskabsmanden Norman Osborn, der under et eksperiment har spr�ngt sit ansigt i stykker, men samtidig har opn�et stor styrke og intelligens.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('State of Play', 2009, 123, 11, 'En ulykke eller m�ske et selvmord p� en metrostation i Washington er ved at s�tte punktum for en politisk karriere. Sladderen k�rer om en aff�re mellem kongresmedlemmet og hans nu afd�de assistent, og over for studiekammeraten og journalisten Cal McAffrey l�gger Stephen Collins heller ikke skjul p�, at det er sandt. Men Collins har mistanke om en forbrydelse - og da tilf�ldet vil, at McAffrey forbinder dette med et andet mystisk mord i Washington, begynder der at tegne sig et billede af et komplot. Et komplot for at tilsvine Collins, inden han kan rejse alvorlige anklager mod koncernen PointCorp, der st�r foran at vinde en lukrativ kontrakt med det amerikanske forsvar. Men i en verden, hvor dagens aviser skal pr�sentere en s�lgende overskrift hver morgen, og hvor politikere kan blive skabt eller �delagt af netop s�dan en overskrift, er sp�rgsm�let, hvem der har brug for hvem.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Thriller"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Tears of the Sun', 2003, 115, 15, 'A.K. Walthers er krigshelt og officer i det amerikanske fr�manskorps � The Navy S.E.A.L.S. Hans enhed sendes til det krigsh�rgede Nigeria for at redde den amerikanske statsborger Dr. Lena Kendricks ud af landet, inden det er for sent. Men da den h�rdhudede Walthers og hans enhed n�r frem, n�gter Hendricks at forlade sin farm, der fungerer som tilflugtsted for krigens ofre. Tv�rtimod b�nfalder hun Walthers at eskortere flygtningene p� en farefuld flugt gennem junglen mod Camerouns gr�nse.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "War"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Black Heart', 2009, 93, 15, 'Terry f�r et nyt liv, da han gennemg�r en hjertetransplantation. Men han har f�et meget mere end bare et nyt hjerte. Terry begynder at f� mystiske og uhyggelige hallucinationer, og det g�r op for ham, at hjertedonoren blev myrdet. Morderne er stadig p� fri fod, og de stopper ikke, f�r de ogs� har sl�et Terry ihjel...')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Horror"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Day after Tomorrow', 2004, 120, 11, 'Den globale opvarmning udl�ser en stribe naturkatastrofer og kaster Jorden ud i en ny istid. Klimatologen Jack Hall, som forg�ves har fors�gt at advare de ansvarlige myndigheder om den overh�ngende fare, m� nu s�tte sit eget liv p� spil og i et nervepirrende kapl�b med tiden rejse til et oversv�mmet og tilfrosset New York for at redde sin voksne s�n, Sam.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Dark Knight', 2012, 158, 11, 'Efter at have p�taget sig skylden for den offentlige anklager Harvey Dents d�d er en van�ret Batman p� mystisk vis forsvundet. Men med ankomsten af en snedig klatretyv og den sk�nselsl�se galning Bane tvinges Bruce Wayne frem af sit selvvalgte eksil og ud i den endelige kamp for Gotham Citys overlevelse. Dette er det afsluttende kapitel i Christopher Nolans imponerende trilogi med Christian Bale som den kappekl�dte helt.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Thriller"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Simpsons Film Festival - Beyond Blunderdome', 2002, 30, 7, 'Homer er til forpremiere p� en ny film med Mel Ginson og giver den d�rlige karakterer. Det ryster Mel, der derfor hyrer Homer til at v�re co-producer p� filmen, som er en nyindspilning af "Mr. Smith kommer til Washington". Homer forvandler filmen til en blodig actionfilm, og det kommer til at st� Mel dyrt.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Animation"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Simpsons Film Festival - Itchy & Scratchy - The Movie', 2002, 30, 7, 'Ved et for�ldrem�de p� skolen, f�r Homer og Marge at vide, at de skal holde Bart i kort line, hvis han skal blive til noget her i livet. Senere s�tter de Bart til at passe Maggie, som stikker af og smadrer bilen. Som straf forbyder Homer Bart at se den nye film med Itchy og Scratchy. Efter en lang og sej kamp m� Bart give sig - og vi f�r et glimt ud i fremtiden, hvor Bart er blevet justitsminister.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Animation"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Simpsons Film Festival - 22 Short Films About Springfield', 2002, 30, 7, 'I dette afsnit f�r vi lov at m�de nogle af seriens bipersoner i sm� klip. Blandt andet ser vi, at skoleinspekt�r Skinner inviterer skoledirekt�r Chamlers til middag, pastor Lovejoys hund overskrider Flandens pl�ne, og Milhouses far optr�der i en Pulp Fiction-sekvens.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Animation"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Simpsons Film Festival - A Star is Burns', 2002, 30, 7, 'Springfield er v�rtsby for en filmfestival med g�stekritikeren Jay Sherman. Finalen bliver et opg�r mellem en film om Barneys alkoholmisbrug og bl�refilm af Mr. Burns. Det bliver Homer, som skal afgive den afg�rende stemme.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Animation"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('The Unsaid', 2001, 105, 15, 'For 3 �r siden begik hans s�n selv-mord. Siden har Michael levet i selvbebrejdelsens bitre skyggeunivers. Han svigtede katastrofalt som far. Han svigtede professionelt som psykolog. �h Gud. han skulle ha set alle faresignalerne. Men nu f�r han chancen for at hj�lpe 17-�rige Thomas, der har v�ret indlagt siden han s� sin far myrde sin mor. Han er lynende intelligent, men dybt traumatiseret, aggressiv og potentielt farlig. Michael skal vurdere om han er klar til at blive udskrevet. Michael er i tvivl. Han ved, Thomas skjuler noget for ham. Men Thomas s�rger omhyg-geligt for at finde sig en k�reste. En s�rbar ung pige, der beh�ver ham - og som er Michaels datter. For ikke at skuffe den dybt forelskede pige, erkl�rer han Thomas normal. Dermed svigter han fatalt igen. Som far og som psykolog.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Crime"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Mystery"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Unstoppable', 2004, 96, 15, 'Da Dean Cage tr�der ind i restauranten forveksler en gruppe forbrydere ham med den undercover narko-agent, de har lagt en f�lde for. De overmander Dean og gi�r ham en indspr�jtning med XE, et nyt designerdrug, for at afh�re ham. XE er et ekstremt kraftigt mind control rusmiddel � med ekstremt kraftige bivirkninger: paranoia, voldelig og komplet uforudsigeligt reaktionsm�nster. N�r man spr�jter den slags lort ind i en tidligere elitesoldat med en lang, beskidt og blodig karriere bag sig, risikerer man at �bne Helvedets Porte.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Volcanno High', 2001, 120, 11, 'En actionfyldt historie ud over det s�dvanlige begynder, da Kim Kyung-Soo igen tvinges til at flytte skole. Volcano High bliver den niende i r�kken, fordi han ikke rigtigt har styr over sig selv og sine overnaturlige kr�fter. Det bliver samtidig hans sv�reste udfordring. Volcano High er landets h�rdeste skole, hvor eleverne bruger mere tid p� at tr�ne kampsport end p� almindelig fag. Det varer ikke l�nge, f�r de andre fornemmer Kims kr�fter, og han bliver mod sin vilje inddraget i kampen mod den magtgale rektor. Rektoren vil ikke bare styre skolen, men hele verden ved hj�lp af en magisk tekst.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Comedy"

		INSERT INTO [dbo].[Movie] ([Title], [ReleaseYear], [PlayTime], [AgeLimit], [Plot])
		VALUES ('Yamakasi', 2001, 91, 11, 'Yamakasi er filmen om en flok unge m�nd fra Paris, alle fra forskellige baggrunde, som springer fra, over og p� bygninger for sjov. Da en ung mand med svagt hjerte pr�ver p� at lave et Yamakasi-stunt, men mislykkes og ender p� hospitalet, beslutter sig de "rigtige" Yamakasier for at skaffe de mange penge, der er n�dvendige for en hjerteoperation.')
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Action"
		EXEC [dbo].[InsertGenreForMovie] @GenreName = "Drama"

		COMMIT TRANSACTION InsertMoviesTransaction
	END TRY

	BEGIN CATCH
		ROLLBACK TRANSACTION InsertMoviesTransaction
	END CATCH 
GO