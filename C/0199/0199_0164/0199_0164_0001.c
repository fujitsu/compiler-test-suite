#include <stdlib.h>
signed short v1 (unsigned char, unsigned char);
signed short (*v2) (unsigned char, unsigned char) = v1;
static signed char v3 (void);
static signed char (*v4) (void) = v3;
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (signed char, unsigned int);
extern signed char (*v14) (signed char, unsigned int);
unsigned char v15 (unsigned short, signed char, signed short);
unsigned char (*v16) (unsigned short, signed char, signed short) = v15;
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern unsigned int v19 (unsigned short, unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned short, unsigned int, unsigned char);
extern signed short v21 (unsigned char, unsigned char);
extern signed short (*v22) (unsigned char, unsigned char);
extern void v23 (unsigned char, signed short, signed int, signed short);
extern void (*v24) (unsigned char, signed short, signed int, signed short);
extern void v25 (unsigned char, signed char);
extern void (*v26) (unsigned char, signed char);
extern signed int v27 (unsigned int, unsigned char, signed int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned char, signed int, unsigned int);
extern unsigned char v29 (signed char, unsigned char);
extern unsigned char (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v46 = 2;
signed short v45 = -1;
signed int v44 = -3;

unsigned char v15 (unsigned short v47, signed char v48, signed short v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = 3;
signed short v51 = -1;
unsigned int v50 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned char v55 = 4;
signed char v54 = -1;
unsigned char v53 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v3 (void)
{
{
for (;;) {
signed char v58 = -4;
unsigned char v57 = 6;
signed int v56 = 3;
trace++;
switch (trace)
{
case 1: 
return v58;
case 3: 
return v58;
default: abort ();
}
}
}
}

signed short v1 (unsigned char v59, unsigned char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = -3;
signed int v62 = -4;
signed short v61 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed char v64;
v64 = v3 ();
history[history_index++] = (int)v64;
}
break;
case 2: 
{
signed char v65;
v65 = v3 ();
history[history_index++] = (int)v65;
}
break;
case 4: 
{
unsigned int v66;
unsigned char v67;
signed int v68;
unsigned int v69;
signed int v70;
v66 = 5U - 0U;
v67 = 4 - 7;
v68 = v62 + -3;
v69 = 7U + 2U;
v70 = v27 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 6: 
{
unsigned char v71;
signed char v72;
v71 = 6 + 6;
v72 = -1 + -1;
v25 (v71, v72);
}
break;
case 10: 
{
unsigned short v73;
v73 = v9 ();
history[history_index++] = (int)v73;
}
break;
case 12: 
return v61;
default: abort ();
}
}
}
}
