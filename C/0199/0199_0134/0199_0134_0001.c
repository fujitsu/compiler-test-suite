#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern signed char v5 (signed short, unsigned short);
extern signed char (*v6) (signed short, unsigned short);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern void v9 (signed short);
extern void (*v10) (signed short);
extern signed char v11 (unsigned char, unsigned char);
extern signed char (*v12) (unsigned char, unsigned char);
signed short v13 (void);
signed short (*v14) (void) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed int, unsigned int);
extern unsigned int (*v18) (signed int, unsigned int);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed short, unsigned char, unsigned int, unsigned char);
extern void (*v24) (signed short, unsigned char, unsigned int, unsigned char);
unsigned int v25 (unsigned int);
unsigned int (*v26) (unsigned int) = v25;
extern unsigned int v27 (signed short, signed short, unsigned int);
extern unsigned int (*v28) (signed short, signed short, unsigned int);
extern unsigned int v29 (signed char, signed char);
extern unsigned int (*v30) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v43 = 1;
signed short v42 = 3;
unsigned char v41 = 4;

unsigned int v25 (unsigned int v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = 3;
unsigned int v46 = 3U;
signed short v45 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
signed int v50 = 1;
signed int v49 = 3;
unsigned short v48 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
unsigned char v53 = 1;
signed char v52 = -1;
unsigned short v51 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
unsigned short v56 = 1;
unsigned short v55 = 3;
unsigned short v54 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v57;
v57 = v15 ();
history[history_index++] = (int)v57;
}
break;
case 8: 
return 7U;
case 9: 
{
unsigned int v58;
unsigned char v59;
v58 = 3U - 3U;
v59 = v3 (v58);
history[history_index++] = (int)v59;
}
break;
case 11: 
return 2U;
default: abort ();
}
}
}
}
