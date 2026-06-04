#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (signed char, signed int, signed int);
static unsigned int (*v2) (signed char, signed int, signed int) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v6) (unsigned char, signed int, signed short, unsigned short);
static signed int v7 (unsigned int, unsigned char, unsigned short);
static signed int (*v8) (unsigned int, unsigned char, unsigned short) = v7;
extern unsigned short v9 (signed short, signed char, signed char, unsigned char);
extern unsigned short (*v10) (signed short, signed char, signed char, unsigned char);
extern signed int v11 (unsigned int);
extern signed int (*v12) (unsigned int);
extern unsigned char v13 (unsigned short, signed char, unsigned int, unsigned char);
extern unsigned char (*v14) (unsigned short, signed char, unsigned int, unsigned char);
extern unsigned short v15 (signed short, unsigned short);
extern unsigned short (*v16) (signed short, unsigned short);
extern signed short v17 (signed int, signed char, unsigned char, unsigned int);
extern signed short (*v18) (signed int, signed char, unsigned char, unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed short, signed short, signed char);
extern signed int (*v22) (signed short, signed short, signed char);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern unsigned short v25 (unsigned char, signed char);
extern unsigned short (*v26) (unsigned char, signed char);
extern unsigned char v27 (signed short, signed short, unsigned short);
extern unsigned char (*v28) (signed short, signed short, unsigned short);
extern unsigned short v29 (signed short, unsigned short);
extern unsigned short (*v30) (signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
unsigned char v32 = 6;
signed int v31 = -4;

static signed int v7 (unsigned int v34, unsigned char v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 0;
unsigned int v38 = 1U;
unsigned char v37 = 4;
trace++;
switch (trace)
{
case 1: 
{
signed short v40;
unsigned short v41;
unsigned short v42;
v40 = -3 - v39;
v41 = 0 + 6;
v42 = v29 (v40, v41);
history[history_index++] = (int)v42;
}
break;
case 3: 
{
signed short v43;
unsigned short v44;
unsigned short v45;
v43 = v39 + 2;
v44 = 4 + v36;
v45 = v29 (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 5: 
return 3;
default: abort ();
}
}
}
}

static unsigned int v1 (signed char v46, signed int v47, signed int v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 2;
signed short v50 = -4;
signed char v49 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v52;
unsigned char v53;
unsigned short v54;
signed int v55;
v52 = 3U + 1U;
v53 = 1 - v51;
v54 = 4 + 1;
v55 = v7 (v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 6: 
{
unsigned short v56;
signed char v57;
unsigned int v58;
unsigned char v59;
unsigned char v60;
v56 = 5 - 0;
v57 = v46 - 2;
v58 = 6U + 0U;
v59 = 6 - v51;
v60 = v13 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 14: 
return 2U;
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
signed char v63;
signed int v64;
signed int v65;
unsigned int v66;
v63 = -4 + -4;
v64 = v31 - v31;
v65 = 0 + 1;
v66 = v1 (v63, v64, v65);
history[history_index++] = (int)v66;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
