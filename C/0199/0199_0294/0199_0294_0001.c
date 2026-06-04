#include <stdlib.h>
extern unsigned char v1 (signed char, signed int);
extern unsigned char (*v2) (signed char, signed int);
unsigned char v3 (signed char, unsigned int, signed short, signed int);
unsigned char (*v4) (signed char, unsigned int, signed short, signed int) = v3;
extern signed int v5 (unsigned char, unsigned short, signed char, signed int);
extern signed int (*v6) (unsigned char, unsigned short, signed char, signed int);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern unsigned int v9 (signed int);
extern unsigned int (*v10) (signed int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (unsigned char, signed int);
extern unsigned char (*v14) (unsigned char, signed int);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
void v17 (unsigned char, unsigned char, unsigned short, signed int);
void (*v18) (unsigned char, unsigned char, unsigned short, signed int) = v17;
extern signed char v19 (signed int, unsigned char, unsigned char, unsigned short);
extern signed char (*v20) (signed int, unsigned char, unsigned char, unsigned short);
extern unsigned char v21 (unsigned char, signed int, signed short);
extern unsigned char (*v22) (unsigned char, signed int, signed short);
extern signed char v23 (signed int, signed char, unsigned char);
extern signed char (*v24) (signed int, signed char, unsigned char);
extern signed char v25 (unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int);
extern signed int v27 (unsigned short, signed short);
extern signed int (*v28) (unsigned short, signed short);
extern signed char v29 (unsigned int);
extern signed char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v52 = 4;
unsigned short v51 = 7;
unsigned char v50 = 6;

void v17 (unsigned char v53, unsigned char v54, unsigned short v55, signed int v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 2;
unsigned char v58 = 7;
signed short v57 = -3;
trace++;
switch (trace)
{
case 7: 
return;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
signed char v62 = 3;
signed int v61 = 0;
signed char v60 = 1;
trace++;
switch (trace)
{
case 3: 
return 7;
case 5: 
return 4;
case 9: 
return 4;
case 11: 
return 3;
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
unsigned char v65 = 3;
unsigned short v64 = 5;
unsigned short v63 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed char v66, unsigned int v67, signed short v68, signed int v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = -3;
signed short v71 = 3;
signed char v70 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
