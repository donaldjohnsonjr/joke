Add-Type –AssemblyName System.Speech

$speaker = (New-Object System.Speech.Synthesis.SpeechSynthesizer)

$joke = (wget http://geek-jokes.sameerkumar.website/api).Content

Write-Host $joke

$speaker.Speak($joke)
