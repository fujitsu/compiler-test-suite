#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (signed char, signed short, unsigned char, signed char);
extern signed short (*v6) (signed char, signed short, unsigned char, signed char);
unsigned short v7 (unsigned short, unsigned short, unsigned int, unsigned char);
unsigned short (*v8) (unsigned short, unsigned short, unsigned int, unsigned char) = v7;
extern unsigned int v9 (signed short, unsigned int, unsigned char, unsigned char);
extern unsigned int (*v10) (signed short, unsigned int, unsigned char, unsigned char);
extern signed int v11 (unsigned int, signed int);
extern signed int (*v12) (unsigned int, signed int);
extern unsigned short v13 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned short (*v14) (unsigned int, unsigned short, signed short, unsigned short);
static void v15 (signed char);
static void (*v16) (signed char) = v15;
extern signed int v17 (unsigned char, signed short);
extern signed int (*v18) (unsigned char, signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
signed char v21 (void);
signed char (*v22) (void) = v21;
static unsigned char v23 (signed short, signed short, unsigned char, unsigned char);
static unsigned char (*v24) (signed short, signed short, unsigned char, unsigned char) = v23;
extern signed int v25 (signed char, unsigned int, unsigned int, unsigned short);
extern signed int (*v26) (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned int v29 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned int (*v30) (unsigned short, unsigned short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned int v32 = 1U;
signed short v31 = 3;

static unsigned char v23 (signed short v34, signed short v35, unsigned char v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 3;
signed int v39 = -3;
signed int v38 = 1;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v41;
unsigned short v42;
signed short v43;
unsigned short v44;
unsigned short v45;
v41 = 4U + 7U;
v42 = 5 + 4;
v43 = v35 - v35;
v44 = 4 - 3;
v45 = v13 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 9: 
{
unsigned int v46;
unsigned short v47;
signed short v48;
unsigned short v49;
unsigned short v50;
v46 = 0U + 2U;
v47 = 0 - 1;
v48 = v35 - v34;
v49 = 4 - 4;
v50 = v13 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 13: 
return v36;
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
signed char v53 = 2;
unsigned char v52 = 6;
unsigned int v51 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v15 (signed char v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 7;
signed int v56 = -3;
unsigned int v55 = 6U;
trace++;
switch (trace)
{
case 6: 
{
signed short v58;
signed short v59;
unsigned char v60;
unsigned char v61;
unsigned char v62;
v58 = 1 - -2;
v59 = 2 - 3;
v60 = v57 + v57;
v61 = 6 - 6;
v62 = v23 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v63, unsigned short v64, unsigned int v65, unsigned char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = 0;
unsigned char v68 = 4;
unsigned int v67 = 1U;
trace++;
switch (trace)
{
case 5: 
{
signed char v70;
v70 = 2 + 2;
v15 (v70);
}
break;
case 15: 
return 6;
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
unsigned char v73;
v73 = v1 ();
history[history_index++] = (int)v73;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
