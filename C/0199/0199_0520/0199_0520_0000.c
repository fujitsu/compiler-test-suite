#include <stdio.h>
#include <stdlib.h>
static void v1 (signed char, signed char);
static void (*v2) (signed char, signed char) = v1;
static signed char v3 (void);
static signed char (*v4) (void) = v3;
signed short v5 (signed short, unsigned short, unsigned short);
signed short (*v6) (signed short, unsigned short, unsigned short) = v5;
signed short v7 (unsigned char, signed int, unsigned int);
signed short (*v8) (unsigned char, signed int, unsigned int) = v7;
extern unsigned short v9 (unsigned int, signed short, signed char, signed int);
extern unsigned short (*v10) (unsigned int, signed short, signed char, signed int);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern unsigned char v15 (unsigned short, signed short, signed short);
extern unsigned char (*v16) (unsigned short, signed short, signed short);
extern signed char v17 (unsigned int, signed char, signed char);
extern signed char (*v18) (unsigned int, signed char, signed char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern void v23 (signed char, signed int, unsigned int, unsigned int);
extern void (*v24) (signed char, signed int, unsigned int, unsigned int);
extern signed char v25 (unsigned char, signed short, unsigned char, signed short);
extern signed char (*v26) (unsigned char, signed short, unsigned char, signed short);
extern signed int v27 (signed int, signed int);
extern signed int (*v28) (signed int, signed int);
extern void v29 (signed short, signed char, signed short, signed short);
extern void (*v30) (signed short, signed char, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
signed int v32 = 3;
unsigned short v31 = 7;

signed char v11 (void)
{
{
for (;;) {
signed int v36 = -3;
signed char v35 = -1;
unsigned char v34 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned char v37, signed int v38, unsigned int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 5;
signed char v41 = 2;
signed short v40 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v43, unsigned short v44, unsigned short v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned char v48 = 3;
signed char v47 = -3;
signed int v46 = -4;
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
signed int v51 = -2;
signed short v50 = 3;
unsigned char v49 = 1;
trace++;
switch (trace)
{
case 5: 
return -1;
case 11: 
return -2;
default: abort ();
}
}
}
}

static void v1 (signed char v52, signed char v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed int v56 = 3;
signed char v55 = 3;
signed int v54 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed short v57;
v57 = v19 ();
history[history_index++] = (int)v57;
}
break;
case 2: 
{
unsigned char v58;
signed short v59;
unsigned char v60;
signed short v61;
signed char v62;
v58 = 0 - 6;
v59 = 0 + 2;
v60 = 2 - 1;
v61 = -4 + 1;
v62 = v25 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 4: 
{
signed char v63;
v63 = v3 ();
history[history_index++] = (int)v63;
}
break;
case 6: 
{
signed short v64;
signed char v65;
signed short v66;
signed short v67;
v64 = -2 - 0;
v65 = -2 + v55;
v66 = 0 + 3;
v67 = -4 - -2;
v29 (v64, v65, v66, v67);
}
break;
case 8: 
{
unsigned int v68;
signed char v69;
signed char v70;
signed char v71;
v68 = 5U - 5U;
v69 = v53 - v55;
v70 = v52 - v55;
v71 = v17 (v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 10: 
{
signed char v72;
v72 = v3 ();
history[history_index++] = (int)v72;
}
break;
case 12: 
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
signed char v75;
signed char v76;
v75 = -3 - -4;
v76 = 3 - 2;
v1 (v75, v76);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
