#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned char v3 (signed short, unsigned char);
extern unsigned char (*v4) (signed short, unsigned char);
extern signed char v5 (unsigned short, unsigned short);
extern signed char (*v6) (unsigned short, unsigned short);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern void v11 (signed int, unsigned short, signed short, signed char);
extern void (*v12) (signed int, unsigned short, signed short, signed char);
extern unsigned short v13 (signed int, unsigned char);
extern unsigned short (*v14) (signed int, unsigned char);
extern unsigned char v15 (signed int, signed char, unsigned short);
extern unsigned char (*v16) (signed int, signed char, unsigned short);
void v17 (unsigned short, signed char, unsigned short, signed int);
void (*v18) (unsigned short, signed char, unsigned short, signed int) = v17;
extern void v19 (signed int, signed int, signed short, signed int);
extern void (*v20) (signed int, signed int, signed short, signed int);
extern unsigned int v21 (signed char, unsigned char, signed short);
extern unsigned int (*v22) (signed char, unsigned char, signed short);
unsigned char v23 (signed char);
unsigned char (*v24) (signed char) = v23;
signed int v25 (signed char, signed int, signed short);
signed int (*v26) (signed char, signed int, signed short) = v25;
unsigned short v27 (unsigned int);
unsigned short (*v28) (unsigned int) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v48 = 2;
unsigned short v47 = 1;
unsigned char v46 = 4;

unsigned short v27 (unsigned int v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = 1;
unsigned int v51 = 5U;
signed char v50 = 0;
trace++;
switch (trace)
{
case 9: 
return 2;
default: abort ();
}
}
}
}

signed int v25 (signed char v53, signed int v54, signed short v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 5;
signed int v57 = 2;
unsigned short v56 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed char v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = 3;
unsigned short v61 = 7;
unsigned int v60 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned short v63, signed char v64, unsigned short v65, signed int v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 2;
unsigned char v68 = 1;
signed char v67 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
