//
//  GSAPI.m
//  Ghostscript
//
//  Created by Salil Jain on 3/15/14.
//

#import "GSAPI.h"
#import "iapi.h"
#import "ierrors.h"

@implementation GSAPI
    
+ (void)convertPDF:(NSString*)pdfPath toPS:(NSString*)psPath;
{
    NSString * outPath=[NSString stringWithFormat:@"-sOutputFile=%@",psPath];
    
    const char * input=[pdfPath UTF8String];
    const char * output=[outPath UTF8String];
    int code;
    void *minst;
    const char * gsargv[12];
    int gsargc=0;
    gsargv[gsargc++] = "gs";	/* actual value doesn't matter */
    gsargv[gsargc++] = "-sColorModel=CMYK";
    gsargv[gsargc++] = "-r600";
    gsargv[gsargc++] = "-sDEVICE=ps2write";
    gsargv[gsargc++] = output;
    gsargv[gsargc++] = input;
    code = gsapi_new_instance(&minst, NULL);
    if (code < 0)
    {
        NSLog(@"No instance created");
    }
    else
    {
        code = gsapi_init_with_args(minst, gsargc, (char **)gsargv);
        
        gsapi_exit(minst);
        gsapi_delete_instance(minst);
        
    }
    
}

@end
