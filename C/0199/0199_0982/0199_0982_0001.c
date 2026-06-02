#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed char v5 (unsigned char, signed char, unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, signed char, unsigned char, unsigned char);
extern signed int v7 (signed short, signed char, signed int);
extern signed int (*v8) (signed short, signed char, signed int);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (signed int, signed short, signed short);
extern void (*v14) (signed int, signed short, signed short);
extern unsigned short v15 (unsigned int, signed int);
extern unsigned short (*v16) (unsigned int, signed int);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern signed int v19 (unsigned short, unsigned char, unsigned int, unsigned int);
extern signed int (*v20) (unsigned short, unsigned char, unsigned int, unsigned int);
extern unsigned char v21 (unsigned int, unsigned int);
extern unsigned char (*v22) (unsigned int, unsigned int);
extern signed short v23 (signed short, signed int, signed char);
extern signed short (*v24) (signed short, signed int, signed char);
extern signed char v25 (void);
extern signed char (*v26) (void);
unsigned char v27 (signed short);
unsigned char (*v28) (signed short) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v47 = 6U;
signed char v46 = -1;
signed short v45 = -3;

unsigned char v27 (signed short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
signed char v51 = 2;
unsigned short v50 = 6;
unsigned short v49 = 6;
trace++;
switch (trace)
{
case 4: 
return 2;
case 8: 
return 3;
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed char v54 = -1;
signed short v53 = -1;
unsigned int v52 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
