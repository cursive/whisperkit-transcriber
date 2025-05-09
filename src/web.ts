import { WebPlugin } from '@capacitor/core';

import type { WhisperkitTranscriberPlugin } from './definitions';

export class WhisperkitTranscriberWeb extends WebPlugin implements WhisperkitTranscriberPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
