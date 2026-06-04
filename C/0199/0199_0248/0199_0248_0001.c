#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned short v3 (unsigned short, signed char, unsigned char, unsigned int);
unsigned short (*v4) (unsigned short, signed char, unsigned char, unsigned int) = v3;
extern signed short v5 (signed short, signed char, signed int, unsigned char);
extern signed short (*v6) (signed short, signed char, signed int, unsigned char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (signed short);
extern unsigned short (*v12) (signed short);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern unsigned short v15 (unsigned int, unsigned char, signed int);
extern unsigned short (*v16) (unsigned int, unsigned char, signed int);
unsigned char v17 (signed short);
unsigned char (*v18) (signed short) = v17;
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern unsigned short v23 (signed int);
extern unsigned short (*v24) (signed int);
extern signed short v27 (unsigned int, unsigned char);
extern signed short (*v28) (unsigned int, unsigned char);
extern unsigned char v29 (unsigned char, unsigned short);
extern unsigned char (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v44 = -3;
signed short v43 = 1;
signed int v42 = -2;

signed int v21 (void)
{
{
for (;;) {
signed short v47 = 0;
unsigned short v46 = 5;
unsigned short v45 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
signed char v51 = -2;
signed char v50 = -2;
unsigned char v49 = 2;
trace++;
switch (trace)
{
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v52, signed char v53, unsigned char v54, unsigned int v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 5;
unsigned int v57 = 2U;
unsigned char v56 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
