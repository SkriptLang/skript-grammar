# Grammar

This file contains an explanation of the rules for highlighting grammar and a guide to adding new grammar for contributors.

-----

## Do's and Don'ts

1.  Not all syntax is to be highlighted. \
    We cannot highlight every syntax. RegEx is not the best tool for recognising syntaxes. \
    The result becomes counterproductive since the entire text is highlighted, defeating the purpose of using a highlighter.

    <img width="269" alt="image" src="https://user-images.githubusercontent.com/14147477/156351314-33868702-40fd-4d31-b269-c241fb102fd6.png">

2.  Ambiguous elements should not be highlighted. \
    E.g. highlighting only the word `loop` will select different uses of it (`loop ... times:` and `loop-...`) \
    Instead, each different use should be selected individually.

    <img width="217" alt="image" src="https://user-images.githubusercontent.com/14147477/156352098-da67a9de-4aa3-44f8-b03c-eaa66db50017.png">

3.  Aim for keywords and easily-recognised structures. \
    Root-level structures like `command /...:` are easy to recognise since they have no indentation. \
    Section-header keywords like `if` and `while` can be identified by the `:` colon at the end of their line. \
    It is better not to highlight a structure than to incorrectly identify it.

    <img width="298" alt="image" src="https://user-images.githubusercontent.com/14147477/156352770-02e45acf-935d-4f81-90f8-a78e3c7a7e66.png">

4.  While we do not directly support add-on grammar, please be respectful of it. \
    E.g. do not add grammar that will preclude commonly-used add-on syntax. \
    This is one of the reasons why we do not highlight all syntax.

-----

## Recognised Keywords

### Section Headers

```yaml
if <.+>:
else if <.+>:
else:

[(parse if|if)] <.+>:
else [parse] if <.+>:

loop %objects%:
loop %number% times:

[do] while <.+>:

command .+:
function .+:
on .+:

trigger:

options:
variables:
aliases:
```

The following section headers are currently not supported, as their effect-section style is not compatible with our highlighting rules.
```yaml
(spawn|summon) %entity types% [%directions% %locations%]:
(spawn|summon) %number% of %entity types% [%directions% %locations%]:

```

### Literals

```sk
"string"
123
1.0
true false off on yes no
```

### Structures

```sk
# Comment

{variable}
{list variable::*}
{_local variable}
{@option}

event-value
loop-value-x
arg-value-x
arg-x

```

### Ending Words

```sk
cancel ...
stop ...
return ...
```

### Types

```sk
player
item [type]
string
number
integer
block
entity
```
