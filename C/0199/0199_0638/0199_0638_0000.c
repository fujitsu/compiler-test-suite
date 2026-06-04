#include <stdio.h>
#include <stdlib.h>
static void v1 (unsigned char);
static void (*v2) (unsigned char) = v1;
extern unsigned short v3 (unsigned char, signed char, signed char, signed short);
extern unsigned short (*v4) (unsigned char, signed char, signed char, signed short);
extern void v5 (unsigned short, signed short, signed short, unsigned short);
extern void (*v6) (unsigned short, signed short, signed short, unsigned short);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
unsigned int v9 (unsigned short, unsigned short, unsigned char, unsigned int);
unsigned int (*v10) (unsigned short, unsigned short, unsigned char, unsigned int) = v9;
extern signed short v11 (signed char, signed int, signed int);
extern signed short (*v12) (signed char, signed int, signed int);
extern signed short v13 (signed int, unsigned int, unsigned int);
extern signed short (*v14) (signed int, unsigned int, unsigned int);
extern signed short v15 (signed char, signed short, signed char, unsigned char);
extern signed short (*v16) (signed char, signed short, signed char, unsigned char);
extern unsigned char v17 (signed short, signed char, unsigned int);
extern unsigned char (*v18) (signed short, signed char, unsigned int);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
signed int v21 (unsigned short, unsigned short, signed char, signed short);
signed int (*v22) (unsigned short, unsigned short, signed char, signed short) = v21;
extern unsigned char v23 (signed char, signed int);
extern unsigned char (*v24) (signed char, signed int);
extern unsigned short v25 (signed short, unsigned int, signed char);
extern unsigned short (*v26) (signed short, unsigned int, signed char);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern void v29 (unsigned char, signed short, signed int, unsigned char);
extern void (*v30) (unsigned char, signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 4U;
signed int v32 = 2;
unsigned int v31 = 2U;

unsigned short v27 (void)
{
{
for (;;) {
unsigned int v36 = 1U;
signed char v35 = 2;
unsigned short v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned short v37, unsigned short v38, signed char v39, signed short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = 1;
signed int v42 = -2;
unsigned char v41 = 3;
trace++;
switch (trace)
{
case 1: 
return -4;
case 8: 
return v42;
case 10: 
{
signed short v44;
unsigned int v45;
signed char v46;
unsigned short v47;
v44 = v40 + v40;
v45 = 7U - 1U;
v46 = 1 - v39;
v47 = v25 (v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 12: 
return v42;
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v48, unsigned short v49, unsigned char v50, unsigned int v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 6;
signed int v53 = 3;
signed int v52 = 3;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v55;
signed short v56;
signed int v57;
unsigned char v58;
v55 = v54 + v54;
v56 = 1 - 3;
v57 = v52 - v52;
v58 = v54 + v54;
v29 (v55, v56, v57, v58);
}
break;
case 14: 
return v51;
default: abort ();
}
}
}
}

static void v1 (unsigned char v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = -4;
unsigned short v61 = 7;
signed int v60 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v63;
unsigned short v64;
signed char v65;
signed short v66;
signed int v67;
v63 = 3 - v61;
v64 = 4 - 5;
v65 = -4 - v62;
v66 = -3 - -2;
v67 = v21 (v63, v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 2: 
{
signed char v68;
signed int v69;
unsigned char v70;
v68 = -1 + v62;
v69 = v60 - v60;
v70 = v23 (v68, v69);
history[history_index++] = (int)v70;
}
break;
case 4: 
{
unsigned short v71;
signed short v72;
signed short v73;
unsigned short v74;
v71 = v61 - v61;
v72 = -1 - -1;
v73 = -3 - -2;
v74 = v61 + 1;
v5 (v71, v72, v73, v74);
}
break;
case 16: 
return;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v77;
v77 = 1 - 0;
v1 (v77);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
