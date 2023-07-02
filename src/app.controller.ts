import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    console.log(1243);
    console.log(1243);
    console.log(1243);
    console.log(1243);
    console.log(1243);
    console.log(1243);
    console.log(1243);
    console.log(123);
    console.log(123);
    
    return this.appService.getHello();
  }
}
