#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short, unsigned int, unsigned int);
extern unsigned short (*v2) (signed short, unsigned short, unsigned int, unsigned int);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern unsigned short v5 (unsigned short);
extern unsigned short (*v6) (unsigned short);
signed short v9 (unsigned short);
signed short (*v10) (unsigned short) = v9;
extern unsigned int v11 (unsigned char, unsigned char, unsigned char);
extern unsigned int (*v12) (unsigned char, unsigned char, unsigned char);
void v13 (unsigned char, signed char, unsigned int);
void (*v14) (unsigned char, signed char, unsigned int) = v13;
void v15 (unsigned int, signed short, signed int, signed char);
void (*v16) (unsigned int, signed short, signed int, signed char) = v15;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned char v21 (signed int, signed int, signed char);
extern unsigned char (*v22) (signed int, signed int, signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed int (*v26) (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed short v27 (unsigned int, signed short, signed int);
extern signed short (*v28) (unsigned int, signed short, signed int);
extern unsigned char v29 (unsigned char, signed int, unsigned int);
extern unsigned char (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v50 = -4;
signed char v49 = -1;
unsigned int v48 = 4U;

void v15 (unsigned int v51, signed short v52, signed int v53, signed char v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = -3;
signed short v56 = -4;
unsigned int v55 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned char v58, signed char v59, unsigned int v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = 0;
unsigned char v62 = 5;
signed short v61 = 1;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}

signed short v9 (unsigned short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = -3;
signed int v66 = 1;
signed short v65 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
