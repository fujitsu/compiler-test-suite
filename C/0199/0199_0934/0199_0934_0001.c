#include <stdlib.h>
extern void v1 (signed char, signed char, unsigned char);
extern void (*v2) (signed char, signed char, unsigned char);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned int v5 (signed char);
extern unsigned int (*v6) (signed char);
signed short v7 (signed int);
signed short (*v8) (signed int) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
extern unsigned int v13 (signed short, signed char, signed short, unsigned char);
extern unsigned int (*v14) (signed short, signed char, signed short, unsigned char);
extern void v15 (signed short, unsigned char, unsigned char);
extern void (*v16) (signed short, unsigned char, unsigned char);
extern signed short v17 (signed char, unsigned int, unsigned int);
extern signed short (*v18) (signed char, unsigned int, unsigned int);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern unsigned int v23 (unsigned int, signed int, unsigned short);
extern unsigned int (*v24) (unsigned int, signed int, unsigned short);
unsigned int v25 (signed char);
unsigned int (*v26) (signed char) = v25;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v52 = -3;
unsigned short v51 = 4;
signed short v50 = 1;

unsigned int v25 (signed char v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 6U;
unsigned short v55 = 0;
unsigned short v54 = 3;
trace++;
switch (trace)
{
case 6: 
return 0U;
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
signed char v59 = 0;
signed short v58 = -3;
unsigned char v57 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 7;
signed int v62 = -2;
unsigned short v61 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
