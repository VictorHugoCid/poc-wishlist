export {};

declare global {
  namespace NodeJS {
    interface ProcessEnv {
      DB_PORT: 4000;
      DB_USER: 'victorCid';
      ENV: 'test' | 'dev' | 'prod';
    }
  }
}
