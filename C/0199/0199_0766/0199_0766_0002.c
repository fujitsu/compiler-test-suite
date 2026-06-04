#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (unsigned short, unsigned char, unsigned char, signed char);
extern unsigned short (*v4) (unsigned short, unsigned char, unsigned char, signed char);
extern signed char v5 (void);
extern signed char (*v6) (void);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned short v11 (unsigned int, unsigned char);
unsigned short (*v12) (unsigned int, unsigned char) = v11;
void v13 (void);
void (*v14) (void) = v13;
extern signed char v15 (unsigned char, signed char, signed short, unsigned char);
extern signed char (*v16) (unsigned char, signed char, signed short, unsigned char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (unsigned int, unsigned int, unsigned char, unsigned short);
extern signed int (*v24) (unsigned int, unsigned int, unsigned char, unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
void v27 (void);
void (*v28) (void) = v27;
extern unsigned short v29 (signed short, unsigned char, signed short);
extern unsigned short (*v30) (signed short, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v71 = 1;
unsigned short v70 = 0;
signed int v69 = -4;

void v27 (void)
{
{
for (;;) {
signed short v74 = -1;
signed short v73 = -2;
signed short v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
unsigned char v77 = 3;
signed char v76 = 3;
unsigned int v75 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v78, unsigned char v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 7;
unsigned int v81 = 1U;
unsigned short v80 = 2;
trace++;
switch (trace)
{
case 7: 
return 7;
case 10: 
return v82;
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
signed short v85 = -2;
unsigned short v84 = 0;
signed int v83 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
