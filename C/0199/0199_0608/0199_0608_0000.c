#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned int);
static unsigned short (*v2) (unsigned int) = v1;
static unsigned int v3 (unsigned int, unsigned short, unsigned short);
static unsigned int (*v4) (unsigned int, unsigned short, unsigned short) = v3;
extern unsigned char v5 (unsigned short, signed char, unsigned int);
extern unsigned char (*v6) (unsigned short, signed char, unsigned int);
extern unsigned char v7 (unsigned short, signed short, unsigned short);
extern unsigned char (*v8) (unsigned short, signed short, unsigned short);
extern unsigned char v9 (signed short, signed int);
extern unsigned char (*v10) (signed short, signed int);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (signed short, unsigned char);
extern signed char (*v14) (signed short, unsigned char);
unsigned short v15 (signed short, signed short, signed char);
unsigned short (*v16) (signed short, signed short, signed char) = v15;
signed char v17 (signed int);
signed char (*v18) (signed int) = v17;
static unsigned int v19 (signed int, signed char, signed int, signed int);
static unsigned int (*v20) (signed int, signed char, signed int, signed int) = v19;
extern unsigned short v21 (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
extern signed int v29 (unsigned char, signed char);
extern signed int (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
signed int v32 = -1;
signed short v31 = -1;

static unsigned int v19 (signed int v34, signed char v35, signed int v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -3;
signed char v39 = 3;
signed char v38 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v41;
signed char v42;
signed int v43;
v41 = 6 + 5;
v42 = v35 + -3;
v43 = v29 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 5: 
{
unsigned char v44;
signed char v45;
signed int v46;
v44 = 2 + 6;
v45 = v38 + v38;
v46 = v29 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 7: 
{
unsigned char v47;
signed char v48;
signed int v49;
v47 = 6 + 0;
v48 = v38 - v35;
v49 = v29 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 9: 
{
unsigned char v50;
signed char v51;
signed int v52;
v50 = 6 - 5;
v51 = v38 - v35;
v52 = v29 (v50, v51);
history[history_index++] = (int)v52;
}
break;
case 11: 
return 0U;
default: abort ();
}
}
}
}

signed char v17 (signed int v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 4U;
signed int v55 = -3;
signed int v54 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed short v57, signed short v58, signed char v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = 3;
unsigned int v61 = 1U;
signed short v60 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v3 (unsigned int v63, unsigned short v64, unsigned short v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -3;
unsigned short v67 = 3;
unsigned short v66 = 4;
trace++;
switch (trace)
{
case 1: 
return 5U;
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned int v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = 1;
signed int v71 = 1;
unsigned char v70 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v73;
unsigned short v74;
unsigned short v75;
unsigned int v76;
v73 = v69 - v69;
v74 = 5 + 4;
v75 = 1 - 1;
v76 = v3 (v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 2: 
{
signed int v77;
signed char v78;
signed int v79;
signed int v80;
unsigned int v81;
v77 = v71 - v71;
v78 = 1 + 3;
v79 = -1 - v71;
v80 = -2 - v71;
v81 = v19 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 12: 
return 0;
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
unsigned int v84;
unsigned short v85;
v84 = 2U - 6U;
v85 = v1 (v84);
history[history_index++] = (int)v85;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
