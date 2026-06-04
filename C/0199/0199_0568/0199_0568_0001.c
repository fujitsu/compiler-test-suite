#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed short v3 (unsigned short, unsigned short, signed short);
extern signed short (*v4) (unsigned short, unsigned short, signed short);
void v5 (void);
void (*v6) (void) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed int v9 (unsigned char, unsigned short);
extern signed int (*v10) (unsigned char, unsigned short);
extern unsigned short v11 (signed char, signed char, signed char, signed int);
extern unsigned short (*v12) (signed char, signed char, signed char, signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed int v15 (unsigned short, unsigned int, unsigned char, signed short);
extern signed int (*v16) (unsigned short, unsigned int, unsigned char, signed short);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern signed char v19 (unsigned int, signed int, unsigned short);
extern signed char (*v20) (unsigned int, signed int, unsigned short);
unsigned int v21 (signed char);
unsigned int (*v22) (signed char) = v21;
extern void v23 (signed short, signed char);
extern void (*v24) (signed short, signed char);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
void v29 (unsigned int, unsigned short, signed char, unsigned short);
void (*v30) (unsigned int, unsigned short, signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v62 = 3;
unsigned int v61 = 0U;
signed int v60 = -2;

void v29 (unsigned int v63, unsigned short v64, signed char v65, unsigned short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = 0;
signed short v68 = -3;
signed char v67 = -1;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v70;
v70 = v7 ();
history[history_index++] = (int)v70;
}
break;
case 6: 
{
unsigned short v71;
v71 = v7 ();
history[history_index++] = (int)v71;
}
break;
case 8: 
{
unsigned short v72;
v72 = v7 ();
history[history_index++] = (int)v72;
}
break;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned int v21 (signed char v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -3;
unsigned int v75 = 3U;
unsigned int v74 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned short v79 = 3;
signed int v78 = -1;
unsigned short v77 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
unsigned char v82 = 2;
unsigned int v81 = 1U;
signed int v80 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
