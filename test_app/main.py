from music21 import note
from music21.musicxml import m21ToXml
from music21.stream import Score


def generate_music_xml(score):
    generalExporter = m21ToXml.GeneralObjectExporter(score)
    return generalExporter.parse()

score = Score()
n = note.Note("D#3")
score.append(n)
print("####################### Nitzan ########################")
print(generate_music_xml(score))
