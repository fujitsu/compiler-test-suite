#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned char);
extern unsigned short (*v2) (signed char, unsigned char);
extern signed short v5 (signed short, signed char, signed int);
extern signed short (*v6) (signed short, signed char, signed int);
extern signed char v7 (signed short, signed int);
extern signed char (*v8) (signed short, signed int);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
extern unsigned short v15 (unsigned short, signed int, signed short);
extern unsigned short (*v16) (unsigned short, signed int, signed short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
void v19 (unsigned short, signed short, signed int);
void (*v20) (unsigned short, signed short, signed int) = v19;
extern signed int v23 (signed short, signed int);
extern signed int (*v24) (signed short, signed int);
extern signed short v25 (signed short, signed char, unsigned char, signed char);
extern signed short (*v26) (signed short, signed char, unsigned char, signed char);
extern signed char v27 (signed int, signed int);
extern signed char (*v28) (signed int, signed int);
unsigned int v29 (unsigned short, signed short);
unsigned int (*v30) (unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v47 = 0U;
signed char v46 = 3;
signed int v45 = -4;

unsigned int v29 (unsigned short v48, signed short v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = 0;
unsigned char v51 = 6;
signed char v50 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned short v53, signed short v54, signed int v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 0U;
signed short v57 = -2;
signed short v56 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed char v61 = -4;
signed short v60 = -2;
signed int v59 = -2;
trace++;
switch (trace)
{
case 3: 
return 7;
default: abort ();
}
}
}
}
