#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed char, unsigned int, unsigned int);
static unsigned char (*v2) (signed char, unsigned int, unsigned int) = v1;
extern signed short v3 (signed int, unsigned short, signed char, unsigned int);
extern signed short (*v4) (signed int, unsigned short, signed char, unsigned int);
extern unsigned char v5 (signed short, unsigned int, signed short, unsigned char);
extern unsigned char (*v6) (signed short, unsigned int, signed short, unsigned char);
extern unsigned char v7 (signed short);
extern unsigned char (*v8) (signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
unsigned char v11 (signed char, signed int);
unsigned char (*v12) (signed char, signed int) = v11;
extern unsigned short v13 (signed short, unsigned int, signed int, signed int);
extern unsigned short (*v14) (signed short, unsigned int, signed int, signed int);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
signed int v17 (unsigned char, unsigned char);
signed int (*v18) (unsigned char, unsigned char) = v17;
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
signed short v21 (signed char);
signed short (*v22) (signed char) = v21;
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
signed short v27 (unsigned char, unsigned int, unsigned int, signed short);
signed short (*v28) (unsigned char, unsigned int, unsigned int, signed short) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed short v32 = 2;
signed short v31 = 0;

signed short v27 (unsigned char v34, unsigned int v35, unsigned int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -1;
signed int v39 = 0;
unsigned short v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 4U;
signed int v43 = 0;
signed int v42 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned char v45, unsigned char v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned int v49 = 7U;
signed int v48 = 3;
signed char v47 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed char v50, signed int v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = 1;
unsigned char v53 = 3;
unsigned short v52 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (signed char v55, unsigned int v56, unsigned int v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 1;
signed char v59 = -2;
unsigned short v58 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v61;
unsigned int v62;
signed short v63;
unsigned char v64;
unsigned char v65;
v61 = -4 + 1;
v62 = v57 + v56;
v63 = 2 - -2;
v64 = 5 + 1;
v65 = v5 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 2: 
{
unsigned int v66;
signed char v67;
v66 = v56 - v57;
v67 = v19 (v66);
history[history_index++] = (int)v67;
}
break;
case 4: 
{
unsigned short v68;
unsigned int v69;
v68 = v60 - v60;
v69 = v23 (v68);
history[history_index++] = (int)v69;
}
break;
case 6: 
{
signed char v70;
v70 = v9 ();
history[history_index++] = (int)v70;
}
break;
case 8: 
{
unsigned int v71;
signed char v72;
v71 = 6U + v56;
v72 = v19 (v71);
history[history_index++] = (int)v72;
}
break;
case 10: 
{
signed int v73;
unsigned short v74;
signed char v75;
unsigned int v76;
signed short v77;
v73 = 0 - -1;
v74 = v58 + 7;
v75 = v55 + -1;
v76 = v56 + v57;
v77 = v3 (v73, v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 12: 
return 7;
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
signed char v80;
unsigned int v81;
unsigned int v82;
unsigned char v83;
v80 = v33 + 1;
v81 = 5U - 1U;
v82 = 1U + 2U;
v83 = v1 (v80, v81, v82);
history[history_index++] = (int)v83;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
