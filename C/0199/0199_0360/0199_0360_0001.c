#include <stdlib.h>
extern signed short v1 (unsigned int);
extern signed short (*v2) (unsigned int);
void v3 (void);
void (*v4) (void) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed short v7 (unsigned char, unsigned int, signed int);
signed short (*v8) (unsigned char, unsigned int, signed int) = v7;
extern void v9 (signed short, signed short, unsigned char, unsigned short);
extern void (*v10) (signed short, signed short, unsigned char, unsigned short);
signed char v11 (signed short, unsigned char, signed int);
signed char (*v12) (signed short, unsigned char, signed int) = v11;
extern unsigned char v15 (unsigned int, signed char);
extern unsigned char (*v16) (unsigned int, signed char);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
unsigned short v19 (signed int, signed int, signed int);
unsigned short (*v20) (signed int, signed int, signed int) = v19;
unsigned int v21 (unsigned int);
unsigned int (*v22) (unsigned int) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (signed short, signed char, signed short, unsigned short);
extern signed int (*v26) (signed short, signed char, signed short, unsigned short);
extern unsigned char v27 (signed char, unsigned int);
extern unsigned char (*v28) (signed char, unsigned int);
extern void v29 (unsigned int);
extern void (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v48 = -2;
unsigned int v47 = 0U;
unsigned short v46 = 7;

unsigned int v21 (unsigned int v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = -4;
unsigned char v51 = 6;
signed int v50 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed int v53, signed int v54, signed int v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = 0;
signed short v57 = 0;
unsigned char v56 = 2;
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
unsigned short v61 = 6;
unsigned int v60 = 6U;
unsigned short v59 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v62;
v62 = 2U + 2U;
v29 (v62);
}
break;
case 5: 
{
unsigned int v63;
v63 = v60 + v60;
v29 (v63);
}
break;
case 7: 
{
unsigned int v64;
v64 = v60 - 0U;
v29 (v64);
}
break;
case 9: 
{
unsigned int v65;
v65 = 7U + v60;
v29 (v65);
}
break;
case 11: 
return 7;
case 13: 
return 6;
case 15: 
return 6;
default: abort ();
}
}
}
}

signed char v11 (signed short v66, unsigned char v67, signed int v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 6;
signed int v70 = -1;
unsigned char v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned char v72, unsigned int v73, signed int v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = 2;
unsigned char v76 = 3;
unsigned short v75 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed short v80 = 1;
signed int v79 = 3;
signed int v78 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
