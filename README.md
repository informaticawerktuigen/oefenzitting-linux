# Oefenzitting 1

In deze oefenzitting leren we werken met de *shell* in GNU/Linux.

De shell is een tekstuele interface voor je computer. Goed kunnen werken met shells is een belangrijke vaardigheid voor een informaticus die efficiënt gebruik wil maken van Linux.

Vele taken op een Linux-machine kunnen uitsluitend via de shell worden uitgevoerd.

## Shell openen

Om te starten met deze oefenzitting moeten we eerst de shell geopend krijgen. 
In Ubuntu kan je gebruik maken van de toetsencombinatie <kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>T</kbd>.

Deze toetsencombinatie opent een nieuw terminalvenster. In dit venster kan je commando's typen die door de shell worden uitgevoerd. 

Het resultaat van deze commando's wordt opnieuw getoond in de terminal.

## Je eerste commando

Een shell is telkens actief in een folder. Elk commando dat men uitvoert in een shell wordt uitgevoerd in de context van die folder. Wanneer men bijvoorbeeld een nieuw bestand aanmaakt, zal dit bestand verschijnen in de actieve folder. Bij het openen van een nieuwe shell is standaard de home-folder van de huidige gebruiker actief.

Typ nu in het terminalvenster het commando `pwd` en duw op enter.  Het commando `pwd` (*Print Working Directory*) geeft als resultaat de huidige actieve folder. Je zou onderstaand resultaat moeten krijgen.

``` shell
$ pwd
/home/r-nummer/
```
## Navigeren door folderstructuur

Voer nu het commando `ls` uit. 

``` shell
$ ls
.  ..  Desktop  Documents  Downloads  Pictures  Videos
```

Het programma `ls` geeft een lijst van subfolders en bestanden in de actieve folder.

Om te veranderen van actieve folder gebruiken we het commando `cd` (*Change Directory*). Dit commando verwacht als argument de map waarnaar je wil navigeren.

``` shell
cd /home/<r-nummer>/Documents
```

Na uitvoering van dit commando is de huidige actieve map `/home/<r-nummer>/Documents`.
Verifieer dit door nadien `pwd` uit te voeren.

### Relatieve paden

Om te vermijden dat we telkens de volledige folderstructuur moeten typen kunnen we gebruik maken van relatieve paden.
Indien de huidige actieve folder `/home/<r-nummer>/` is, kunnen we ook onderstaand korter commando uitvoeren:

``` shell
cd Documents
```

### Speciale argumenten

Indien je een trap hoger in de folderstructuur wil navigeren kan je gebruik maken van het speciale argument `..`. Het argument `..` verwijst telkens naar de vorige, hogere folder (ook wel de parent-folder genoemd).

``` shell
$ pwd
/home/<r-nummer>/documents
$ cd ..
$ pwd
/home/<r-nummer>/
```

Het argument `~` verwijst telkens naar de home-directory van de actieve gebruiker.

``` shell
$ pwd
/home/<r-nummer>/Documents/Samenvattingen/
$ cd ~
$ pwd
/home/<r-nummer>/
```

Experimenteer nu met de commando's `cd`, `pwd` en `ls` en de argumenten `..` en `~` tot je ze onder de knie hebt.

## Git

Het programma `git` is een zeer krachtig programma. Met git kan je een folder op je machine onder *version control* plaatsen. 
Door gebruik te maken van *version control* kan je ervoor zorgen dat niet alleen de finale versie, maar ook alle oudere versies van bestanden bewaard blijven. Hiermee kan je heel eenvoudig wijzigingen ongedaan maken en oude versies van bestanden opvragen.

`git` bewaart je folder, de bestanden en alle wijzigingen in een *repository*.
Wanneer je gebruik maakt van een online repository, bijvoorbeeld via [GitHub](https://www.github.com/), kan je deze delen met meerdere personen. Dit laat toe om in groep samen te werken aan bestanden. Elke individuele persoon werkt in een lokale kopie van de repository. Elke *lokale* wijziging wordt naar de *remote* reposity *gepushed*.

Al doende zullen we de werking van `git` leren kennen.

### Clonen van repository

Voer allereerst in je home-folder het onderstaande commando uit:

``` shell
git clone https://github.com/informatica-werktuigen/oefenzitting-linux.git
```

Het git clone commando maakt een *lokale* kopie van de repository `oefenzitting-linux` in de huidige folder.
Na uitvoering van bovenstaand commando verschijnt er een nieuwe folder genaamd `oefenzitting-linux` in je home-folder. Deze folder bevat alle opdrachten voor de huidige oefenzitting.

Navigeer met behulp van `cd` naar deze nieuwe folder.


## Opdrachten

Het verdere verloop van deze oefenzitting bestaat uit het oplossen van verschillende opdrachten met behulp van de shell.

Wanneer je een level correct oplost verkrijg je het wachtwoord voor het volgende level.
**Zorg ervoor dat je voor volgende oefenzitting alle levels hebt opgelost.**

Elk van deze challenges zal nieuwe commando's introduceren. Indien de werking van een commando onduidelijk is, probeer dan gebruik te maken van het commando `man <commando>` of gebruik Google om de werking ervan beter te begrijpen. Maak zeker ook gebruik van onderstaande tips & tricks indien je vast komt te zitten.

### Starten 

Elk level heeft een eigen folder in de repository. In die folder vind je telkens een bestand genaamd `README.gpg`. Dit bestand is versleuteld met een wachtwoord. Om dit bestand te kunnen openen moet je dus eerst het bestand decrypteren.

Een bestand decrypteren doe je door het commando `gpg` te gebruiken. Navigeer naar de folder van level 0 en decrypteer `README.gpg` met wachtwoord `influence`.

``` shell
$ gpg README.gpg
```

Indien het wachtwoord correct is ingegeven verschijnt hierna het gedecrypteerde bestand `README`.

De uitdaging van level 0 bestaat er nu uit om door middel van het programma `cat` de inhoud van het bestand `README` uit te lezen. Hierin zal je het wachtwoord van level 1 terugvinden.

Veel succes!

# Tips & tricks

* Met de toets <kbd>&uarr;</kbd> kan je doorheen de geschiedenis van je uitgevoerde commando's scrollen. Handig om snel het vorige ingegeven commando te verbeteren.
* Gebruik <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>C</kbd> en <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>V</kbd> om te knippen en plakken in de terminal.
* Wanneer je terminal niet meer lijkt te reageren, probeer dan eens de toetsencombinatie <kbd>CTRL</kbd>+<kbd>C</kbd>. Dit komt frequent voor na het foutief ingeven van een commando. De toetsencombinatie sluit het huidig actieve programma in de shell.
* Informatie over het gebruik van een commando kan je vinden door gebruik te maken van de manual pages. Dit doe je door het commando `man <commando>` uit te voeren. De man-pages verlaten doe je met de toets <kbd>q</kbd>.
* Naast de manual pages is ook Google een zeer goede bron voor informatie!
