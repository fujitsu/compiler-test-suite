#include <stdlib.h>
extern void v1 (unsigned char, unsigned char, unsigned int, signed char);
extern void (*v2) (unsigned char, unsigned char, unsigned int, signed char);
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern unsigned char v7 (signed short, signed int);
extern unsigned char (*v8) (signed short, signed int);
extern signed char v9 (signed short, unsigned char, unsigned char);
extern signed char (*v10) (signed short, unsigned char, unsigned char);
unsigned char v11 (unsigned short);
unsigned char (*v12) (unsigned short) = v11;
extern signed char v13 (unsigned int);
extern signed char (*v14) (unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
unsigned int v19 (unsigned int);
unsigned int (*v20) (unsigned int) = v19;
extern unsigned char v21 (unsigned int, unsigned char, unsigned int, unsigned char);
extern unsigned char (*v22) (unsigned int, unsigned char, unsigned int, unsigned char);
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
void v25 (unsigned short, unsigned int, signed char, signed int);
void (*v26) (unsigned short, unsigned int, signed char, signed int) = v25;
unsigned int v27 (unsigned int, signed int, signed char);
unsigned int (*v28) (unsigned int, signed int, signed char) = v27;
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v49 = -1;
unsigned int v48 = 2U;
unsigned short v47 = 4;

unsigned int v27 (unsigned int v50, signed int v51, signed char v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned char v55 = 1;
signed char v54 = -3;
signed short v53 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v56;
v56 = 1 - 2;
v29 (v56);
}
break;
case 5: 
{
unsigned short v57;
v57 = 1 + 4;
v29 (v57);
}
break;
case 7: 
{
unsigned short v58;
v58 = 2 - 3;
v29 (v58);
}
break;
case 9: 
{
unsigned short v59;
v59 = 2 - 4;
v29 (v59);
}
break;
case 11: 
return v50;
default: abort ();
}
}
}
}

void v25 (unsigned short v60, unsigned int v61, signed char v62, signed int v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = 2;
unsigned int v65 = 1U;
unsigned char v64 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = -1;
unsigned int v69 = 5U;
signed char v68 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
unsigned int v74 = 5U;
unsigned char v73 = 6;
signed int v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned char v77 = 7;
unsigned short v76 = 0;
signed short v75 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
