# whisperkit-transcriber
HEAD
Capacitor plugin for whisper kit

You will need ot add ggml-base.en.bin to ios/Sources/WhisperkitTranscriberPlugin/as it is too large for github

Let's you run Whisperkit locally in your Capactior build iOS app

## Install

```bash
npm install whisperkit-transcriber
npx cap sync
```

## API

<docgen-index>

* [`echo(...)`](#echo)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### echo(...)

```typescript
echo(options: { value: string; }) => Promise<{ value: string; }>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ value: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------

</docgen-api>

