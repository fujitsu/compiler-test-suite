#include <stdio.h>
#include <stdlib.h>
static signed char v1 (void);
static signed char (*v2) (void) = v1;
extern unsigned int v3 (signed int, unsigned int, signed int, signed char);
extern unsigned int (*v4) (signed int, unsigned int, signed int, signed char);
extern unsigned char v5 (unsigned short, unsigned short, signed int);
extern unsigned char (*v6) (unsigned short, unsigned short, signed int);
extern signed int v7 (unsigned char, unsigned char, signed char, unsigned char);
extern signed int (*v8) (unsigned char, unsigned char, signed char, unsigned char);
static signed int v9 (signed short, signed short);
static signed int (*v10) (signed short, signed short) = v9;
extern unsigned int v11 (signed int, unsigned int, unsigned int);
extern unsigned int (*v12) (signed int, unsigned int, unsigned int);
extern signed short v13 (unsigned int, signed char, unsigned int, unsigned short);
extern signed short (*v14) (unsigned int, signed char, unsigned int, unsigned short);
extern signed int v15 (void);
extern signed int (*v16) (void);
unsigned int v17 (unsigned char, signed char, signed char, signed short);
unsigned int (*v18) (unsigned char, signed char, signed char, signed short) = v17;
extern unsigned char v19 (signed int, unsigned short);
extern unsigned char (*v20) (signed int, unsigned short);
extern unsigned short v21 (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned short (*v22) (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned int v23 (signed short, unsigned char, unsigned int);
extern unsigned int (*v24) (signed short, unsigned char, unsigned int);
extern unsigned short v25 (unsigned int, unsigned char);
extern unsigned short (*v26) (unsigned int, unsigned char);
extern unsigned short v27 (signed int, signed char);
extern unsigned short (*v28) (signed int, signed char);
extern unsigned short v29 (signed short);
extern unsigned short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed short v32 = -4;
signed char v31 = 2;

unsigned int v17 (unsigned char v34, signed char v35, signed char v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 1;
signed short v39 = -4;
unsigned int v38 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v9 (signed short v41, signed short v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 5U;
signed short v44 = 3;
unsigned short v43 = 2;
trace++;
switch (trace)
{
case 7: 
{
signed short v46;
unsigned char v47;
unsigned int v48;
unsigned int v49;
v46 = v41 - v42;
v47 = 0 - 5;
v48 = 2U + 3U;
v49 = v23 (v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 9: 
return -3;
default: abort ();
}
}
}
}

static signed char v1 (void)
{
{
for (;;) {
signed short v52 = 1;
signed short v51 = 1;
signed short v50 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v53;
unsigned int v54;
unsigned int v55;
signed char v56;
unsigned short v57;
v53 = 1 + 1;
v54 = 5U - 3U;
v55 = 4U - 4U;
v56 = 3 + 3;
v57 = v21 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 2: 
{
signed int v58;
unsigned int v59;
signed int v60;
signed char v61;
unsigned int v62;
v58 = -3 - 1;
v59 = 3U + 2U;
v60 = 0 - 1;
v61 = 3 - -1;
v62 = v3 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 6: 
{
signed short v63;
signed short v64;
signed int v65;
v63 = v51 + v50;
v64 = v50 - -2;
v65 = v9 (v63, v64);
history[history_index++] = (int)v65;
}
break;
case 10: 
{
unsigned char v66;
unsigned int v67;
unsigned int v68;
signed char v69;
unsigned short v70;
v66 = 6 + 5;
v67 = 5U - 3U;
v68 = 5U + 6U;
v69 = -3 + 0;
v70 = v21 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 12: 
return 2;
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
signed char v73;
v73 = v1 ();
history[history_index++] = (int)v73;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
