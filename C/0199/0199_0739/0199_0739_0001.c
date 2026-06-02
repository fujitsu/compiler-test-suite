#include <stdlib.h>
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
extern signed int v7 (signed char, signed int);
extern signed int (*v8) (signed char, signed int);
unsigned char v9 (unsigned int, signed int, signed int);
unsigned char (*v10) (unsigned int, signed int, signed int) = v9;
extern signed short v11 (unsigned char, signed short, signed char);
extern signed short (*v12) (unsigned char, signed short, signed char);
extern signed short v13 (signed short, unsigned short, signed char);
extern signed short (*v14) (signed short, unsigned short, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (unsigned int, unsigned short, unsigned int);
extern void (*v18) (unsigned int, unsigned short, unsigned int);
extern signed char v19 (signed int, signed short, signed short, signed int);
extern signed char (*v20) (signed int, signed short, signed short, signed int);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v68 = 6;
unsigned int v67 = 0U;
unsigned int v66 = 7U;

void v29 (void)
{
{
for (;;) {
signed int v71 = 0;
signed int v70 = -4;
unsigned int v69 = 4U;
trace++;
switch (trace)
{
case 5: 
return;
case 7: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned int v25 (void)
{
{
for (;;) {
unsigned char v74 = 2;
unsigned short v73 = 1;
signed int v72 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
unsigned short v77 = 6;
unsigned short v76 = 7;
signed int v75 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v78, signed int v79, signed int v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -3;
signed int v82 = -1;
unsigned char v81 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
