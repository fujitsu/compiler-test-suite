#include <stdio.h>
#include <stdlib.h>
static void v1 (signed char, unsigned short);
static void (*v2) (signed char, unsigned short) = v1;
extern signed char v3 (unsigned int, unsigned int);
extern signed char (*v4) (unsigned int, unsigned int);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
static signed char v7 (unsigned int, signed short);
static signed char (*v8) (unsigned int, signed short) = v7;
extern unsigned char v9 (unsigned short, unsigned short);
extern unsigned char (*v10) (unsigned short, unsigned short);
extern unsigned int v11 (signed char, unsigned short);
extern unsigned int (*v12) (signed char, unsigned short);
signed char v13 (unsigned short, unsigned int);
signed char (*v14) (unsigned short, unsigned int) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern unsigned char v17 (signed short, unsigned char, signed int, signed char);
extern unsigned char (*v18) (signed short, unsigned char, signed int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (unsigned char, unsigned int, signed int, unsigned int);
extern signed int (*v22) (unsigned char, unsigned int, signed int, unsigned int);
extern signed short v23 (signed char, unsigned char, unsigned char, unsigned char);
extern signed short (*v24) (signed char, unsigned char, unsigned char, unsigned char);
extern signed char v25 (signed int, signed int, signed short);
extern signed char (*v26) (signed int, signed int, signed short);
extern unsigned int v27 (signed short);
extern unsigned int (*v28) (signed short);
unsigned int v29 (unsigned char, unsigned int, unsigned char, signed int);
unsigned int (*v30) (unsigned char, unsigned int, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
signed short v32 = -3;
unsigned int v31 = 7U;

unsigned int v29 (unsigned char v34, unsigned int v35, unsigned char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 2U;
signed char v39 = 2;
unsigned short v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v41, unsigned int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = 0;
signed int v44 = 0;
unsigned int v43 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v7 (unsigned int v46, signed short v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = -3;
signed short v49 = -2;
signed char v48 = 0;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v51;
unsigned int v52;
signed int v53;
unsigned int v54;
signed int v55;
v51 = 2 - 6;
v52 = v46 - v46;
v53 = 2 - v50;
v54 = v46 - v46;
v55 = v21 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 6: 
{
signed short v56;
unsigned int v57;
v56 = v49 + 2;
v57 = v27 (v56);
history[history_index++] = (int)v57;
}
break;
case 8: 
{
unsigned char v58;
unsigned int v59;
signed int v60;
unsigned int v61;
signed int v62;
v58 = 3 - 0;
v59 = 5U + 6U;
v60 = v50 + v50;
v61 = v46 + 4U;
v62 = v21 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 12: 
return v48;
default: abort ();
}
}
}
}

static void v1 (signed char v63, unsigned short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 0;
unsigned short v66 = 2;
signed int v65 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v68;
v68 = v19 ();
history[history_index++] = (int)v68;
}
break;
case 2: 
return;
case 3: 
{
unsigned int v69;
signed short v70;
signed char v71;
v69 = 4U - 6U;
v70 = -2 + -2;
v71 = v7 (v69, v70);
history[history_index++] = (int)v71;
}
break;
case 13: 
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
signed char v74;
unsigned short v75;
v74 = -4 - 0;
v75 = 4 - 6;
v1 (v74, v75);
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
