import { WhisperkitTranscriber } from 'whisperkit-transcriber';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    WhisperkitTranscriber.echo({ value: inputValue })
}
