#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned char v5 (unsigned short, unsigned char, signed short);
extern unsigned char (*v6) (unsigned short, unsigned char, signed short);
extern unsigned short v9 (signed char, signed int, unsigned short, signed char);
extern unsigned short (*v10) (signed char, signed int, unsigned short, signed char);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern void v13 (signed short, signed short, signed short, signed char);
extern void (*v14) (signed short, signed short, signed short, signed char);
void v15 (unsigned int, signed short, signed int, signed char);
void (*v16) (unsigned int, signed short, signed int, signed char) = v15;
static unsigned int v17 (unsigned char);
static unsigned int (*v18) (unsigned char) = v17;
extern unsigned char v21 (unsigned short, unsigned char, signed int, signed int);
extern unsigned char (*v22) (unsigned short, unsigned char, signed int, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
unsigned short v25 (signed int);
unsigned short (*v26) (signed int) = v25;
unsigned int v27 (unsigned short, signed int, signed char);
unsigned int (*v28) (unsigned short, signed int, signed char) = v27;
extern signed int v29 (signed int, unsigned int, unsigned char, unsigned char);
extern signed int (*v30) (signed int, unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v46 = 3;
unsigned short v45 = 1;
signed short v44 = -1;

unsigned int v27 (unsigned short v47, signed int v48, signed char v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = 1;
signed int v51 = -1;
signed short v50 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (signed int v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 1U;
unsigned char v55 = 6;
signed char v54 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v17 (unsigned char v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = -3;
signed short v59 = 3;
unsigned short v58 = 5;
trace++;
switch (trace)
{
case 5: 
return 1U;
case 7: 
return 2U;
default: abort ();
}
}
}
}

void v15 (unsigned int v61, signed short v62, signed int v63, signed char v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 1;
signed short v66 = -3;
unsigned short v65 = 7;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v68;
unsigned int v69;
v68 = 4 + 7;
v69 = v17 (v68);
history[history_index++] = (int)v69;
}
break;
case 6: 
{
unsigned char v70;
unsigned int v71;
v70 = 0 + 5;
v71 = v17 (v70);
history[history_index++] = (int)v71;
}
break;
case 8: 
{
signed int v72;
unsigned int v73;
unsigned char v74;
unsigned char v75;
signed int v76;
v72 = v63 + v63;
v73 = 1U - v61;
v74 = 3 - 4;
v75 = 6 + 6;
v76 = v29 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 10: 
{
signed int v77;
unsigned int v78;
unsigned char v79;
unsigned char v80;
signed int v81;
v77 = v63 - v63;
v78 = v61 + v61;
v79 = 5 + 3;
v80 = 4 + 6;
v81 = v29 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
