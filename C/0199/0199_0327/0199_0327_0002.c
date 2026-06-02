#include <stdlib.h>
extern signed char v1 (unsigned int, signed int, unsigned char, unsigned char);
extern signed char (*v2) (unsigned int, signed int, unsigned char, unsigned char);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern unsigned char v7 (unsigned int, signed int);
extern unsigned char (*v8) (unsigned int, signed int);
extern signed int v9 (signed short, signed char, unsigned int, unsigned char);
extern signed int (*v10) (signed short, signed char, unsigned int, unsigned char);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
extern unsigned char v19 (signed int, signed int, signed short);
extern unsigned char (*v20) (signed int, signed int, signed short);
extern unsigned char v21 (unsigned int, signed int);
extern unsigned char (*v22) (unsigned int, signed int);
extern void v23 (unsigned short, signed char);
extern void (*v24) (unsigned short, signed char);
unsigned char v27 (unsigned char, unsigned char);
unsigned char (*v28) (unsigned char, unsigned char) = v27;
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v60 = 2;
unsigned char v59 = 6;
signed short v58 = 3;

unsigned char v27 (unsigned char v61, unsigned char v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed int v65 = 3;
unsigned char v64 = 2;
unsigned short v63 = 2;
trace++;
switch (trace)
{
case 4: 
return v61;
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed char v68 = 1;
signed char v67 = -1;
signed int v66 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned char v71 = 2;
signed int v70 = -1;
unsigned short v69 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
