import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { Logger, ValidationPipe } from '@nestjs/common';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  const logger = new Logger();
  app.useLogger(logger); // Add this line to use the logger for the app

  app.useGlobalPipes(new ValidationPipe());

  const PORT = process.env.PORT || 8080;
  await app.listen(PORT);
  logger.log(`App running on http://localhost:${PORT}`);
}
bootstrap();
