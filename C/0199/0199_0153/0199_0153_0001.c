#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern void v7 (signed short, signed int);
extern void (*v8) (signed short, signed int);
extern signed int v9 (unsigned char, unsigned int, unsigned char);
extern signed int (*v10) (unsigned char, unsigned int, unsigned char);
signed short v11 (unsigned short, unsigned char, unsigned char);
signed short (*v12) (unsigned short, unsigned char, unsigned char) = v11;
signed short v13 (signed int, unsigned char, signed short, unsigned char);
signed short (*v14) (signed int, unsigned char, signed short, unsigned char) = v13;
extern signed short v15 (signed short);
extern signed short (*v16) (signed short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed int v19 (signed int, unsigned char);
extern signed int (*v20) (signed int, unsigned char);
void v21 (unsigned int, unsigned short, signed short);
void (*v22) (unsigned int, unsigned short, signed short) = v21;
extern signed short v23 (signed char, signed short, unsigned short, unsigned char);
extern signed short (*v24) (signed char, signed short, unsigned short, unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern unsigned char v29 (signed short, unsigned short, unsigned short, unsigned int);
extern unsigned char (*v30) (signed short, unsigned short, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v48 = 4;
unsigned int v47 = 7U;
signed short v46 = -2;

signed short v27 (void)
{
{
for (;;) {
unsigned short v51 = 7;
signed short v50 = 1;
signed char v49 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned int v52, unsigned short v53, signed short v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = 0;
unsigned int v56 = 7U;
signed char v55 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed int v58, unsigned char v59, signed short v60, unsigned char v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = -4;
unsigned int v63 = 1U;
signed short v62 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned short v65, unsigned char v66, unsigned char v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = -3;
unsigned short v69 = 7;
signed int v68 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed short v73 = 1;
signed char v72 = 0;
unsigned char v71 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v74;
v74 = v25 ();
history[history_index++] = (int)v74;
}
break;
case 2: 
{
signed short v75;
signed short v76;
v75 = v73 - -4;
v76 = v15 (v75);
history[history_index++] = (int)v76;
}
break;
case 4: 
{
unsigned short v77;
v77 = v5 ();
history[history_index++] = (int)v77;
}
break;
case 6: 
{
signed short v78;
signed short v79;
v78 = v73 - v73;
v79 = v15 (v78);
history[history_index++] = (int)v79;
}
break;
case 8: 
{
unsigned char v80;
v80 = v25 ();
history[history_index++] = (int)v80;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
