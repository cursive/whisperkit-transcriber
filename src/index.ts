import { registerPlugin } from '@capacitor/core';

import type { WhisperkitTranscriberPlugin } from './definitions';

const WhisperkitTranscriber = registerPlugin<WhisperkitTranscriberPlugin>('WhisperkitTranscriber', {
  web: () => import('./web').then((m) => new m.WhisperkitTranscriberWeb()),
});

export * from './definitions';
export { WhisperkitTranscriber };
