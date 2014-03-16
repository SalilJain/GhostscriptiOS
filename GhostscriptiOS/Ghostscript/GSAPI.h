//
//  GSAPI.h
//  Ghostscript
//
//  Created by Salil Jain on 3/15/14.
//

#import <Foundation/Foundation.h>

@interface GSAPI : NSObject
    
+ (void)convertPDF:(NSString*)pdfPath toPS:(NSString*)psPath;

@end
