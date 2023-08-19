import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return `Hello from ${
      process.env.ENVIRONMENT || '[no ENVIRONMENT selected]'
    }`;
  }
}
