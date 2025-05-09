export interface WhisperkitTranscriberPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
