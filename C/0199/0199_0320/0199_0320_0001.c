#include <stdlib.h>
void v3 (signed char, unsigned char);
void (*v4) (signed char, unsigned char) = v3;
extern unsigned char v5 (signed short, unsigned char, unsigned short);
extern unsigned char (*v6) (signed short, unsigned char, unsigned short);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
extern signed int v11 (void);
extern signed int (*v12) (void);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned int v17 (unsigned int, unsigned char);
extern unsigned int (*v18) (unsigned int, unsigned char);
signed int v19 (unsigned int, unsigned short);
signed int (*v20) (unsigned int, unsigned short) = v19;
signed int v21 (signed short, unsigned int, signed char, unsigned short);
signed int (*v22) (signed short, unsigned int, signed char, unsigned short) = v21;
extern unsigned char v23 (unsigned char, signed char);
extern unsigned char (*v24) (unsigned char, signed char);
extern signed int v25 (unsigned int, unsigned int, signed char, unsigned int);
extern signed int (*v26) (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned char v29 (signed short, signed short, unsigned int);
extern unsigned char (*v30) (signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v66 = 2;
signed char v65 = 2;
signed short v64 = 1;

signed int v21 (signed short v67, unsigned int v68, signed char v69, unsigned short v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = 2;
unsigned short v72 = 4;
signed char v71 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned int v74, unsigned short v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed int v78 = 1;
unsigned char v77 = 7;
unsigned char v76 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned char v81 = 6;
unsigned char v80 = 5;
signed int v79 = -3;
trace++;
switch (trace)
{
case 4: 
{
signed short v82;
signed short v83;
unsigned int v84;
unsigned char v85;
v82 = 3 - -3;
v83 = 1 - 1;
v84 = 2U - 3U;
v85 = v29 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 6: 
return v80;
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
unsigned int v88 = 1U;
unsigned short v87 = 2;
signed int v86 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed char v89, unsigned char v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 5;
unsigned char v92 = 4;
signed int v91 = -2;
trace++;
switch (trace)
{
case 8: 
{
signed char v94;
v94 = v15 ();
history[history_index++] = (int)v94;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
