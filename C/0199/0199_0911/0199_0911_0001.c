#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
unsigned int v3 (unsigned int);
unsigned int (*v4) (unsigned int) = v3;
extern unsigned short v5 (unsigned short, signed int, unsigned int);
extern unsigned short (*v6) (unsigned short, signed int, unsigned int);
extern signed int v7 (void);
extern signed int (*v8) (void);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned char v11 (signed int, signed char);
extern unsigned char (*v12) (signed int, signed char);
extern void v13 (void);
extern void (*v14) (void);
unsigned short v15 (signed int, unsigned char);
unsigned short (*v16) (signed int, unsigned char) = v15;
extern signed char v17 (signed char, unsigned char);
extern signed char (*v18) (signed char, unsigned char);
extern unsigned int v19 (signed char, signed int, signed char);
extern unsigned int (*v20) (signed char, signed int, signed char);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed short v23 (unsigned int, signed int, signed int, unsigned int);
extern signed short (*v24) (unsigned int, signed int, signed int, unsigned int);
signed int v25 (signed short);
signed int (*v26) (signed short) = v25;
extern unsigned char v27 (signed short, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v54 = 2;
signed short v53 = 2;
signed short v52 = 1;

signed int v25 (signed short v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 3;
unsigned short v57 = 4;
unsigned int v56 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed int v59, unsigned char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 2;
unsigned char v62 = 2;
signed short v61 = 2;
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
signed short v66 = -3;
signed int v65 = -3;
unsigned short v64 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = -2;
signed int v69 = 2;
signed int v68 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
signed short v73 = 0;
unsigned short v72 = 7;
unsigned char v71 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed short v74;
unsigned short v75;
unsigned char v76;
v74 = v73 - v73;
v75 = v72 - 6;
v76 = v27 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 2: 
{
signed char v77;
v77 = v21 ();
history[history_index++] = (int)v77;
}
break;
case 4: 
{
signed char v78;
unsigned char v79;
signed char v80;
v78 = -4 - -3;
v79 = v71 + v71;
v80 = v17 (v78, v79);
history[history_index++] = (int)v80;
}
break;
case 10: 
{
signed short v81;
unsigned short v82;
unsigned char v83;
v81 = v73 - -2;
v82 = v72 - v72;
v83 = v27 (v81, v82);
history[history_index++] = (int)v83;
}
break;
case 12: 
return v73;
default: abort ();
}
}
}
}
