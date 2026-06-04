#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed int, signed char, signed char, unsigned char);
static unsigned char (*v2) (signed int, signed char, signed char, unsigned char) = v1;
extern signed char v3 (signed short);
extern signed char (*v4) (signed short);
extern signed char v5 (signed int, signed short, signed int, signed char);
extern signed char (*v6) (signed int, signed short, signed int, signed char);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
static signed short v9 (signed int, signed int);
static signed short (*v10) (signed int, signed int) = v9;
extern signed char v11 (unsigned int, signed short, unsigned short, unsigned int);
extern signed char (*v12) (unsigned int, signed short, unsigned short, unsigned int);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern unsigned int v15 (unsigned short, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned short, unsigned char, unsigned int);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
static unsigned int v19 (void);
static unsigned int (*v20) (void) = v19;
static signed char v21 (signed short, signed short, signed char);
static signed char (*v22) (signed short, signed short, signed char) = v21;
extern unsigned short v23 (unsigned int, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v24) (unsigned int, unsigned short, unsigned short, unsigned int);
extern void v25 (signed int, unsigned int);
extern void (*v26) (signed int, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed int, unsigned char, signed short, signed int);
extern unsigned short (*v30) (signed int, unsigned char, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
signed char v32 = 1;
unsigned short v31 = 2;

static signed char v21 (signed short v34, signed short v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -1;
unsigned char v38 = 3;
signed char v37 = -4;
trace++;
switch (trace)
{
case 3: 
return v36;
default: abort ();
}
}
}
}

static unsigned int v19 (void)
{
{
for (;;) {
unsigned char v42 = 3;
unsigned char v41 = 6;
unsigned char v40 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed short v43;
signed short v44;
signed char v45;
signed char v46;
v43 = 2 - 1;
v44 = -3 - -4;
v45 = 0 - -3;
v46 = v21 (v43, v44, v45);
history[history_index++] = (int)v46;
}
break;
case 4: 
return 4U;
case 8: 
return 5U;
default: abort ();
}
}
}
}

static signed short v9 (signed int v47, signed int v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 3;
signed char v50 = 0;
signed int v49 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v52;
v52 = v19 ();
history[history_index++] = (int)v52;
}
break;
case 5: 
{
unsigned int v53;
unsigned short v54;
unsigned short v55;
unsigned int v56;
unsigned short v57;
v53 = 4U + 4U;
v54 = 2 + 4;
v55 = 4 - 3;
v56 = 2U - 7U;
v57 = v23 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 7: 
{
unsigned int v58;
v58 = v19 ();
history[history_index++] = (int)v58;
}
break;
case 9: 
return -1;
default: abort ();
}
}
}
}

static unsigned char v1 (signed int v59, signed char v60, signed char v61, unsigned char v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 1;
signed char v64 = 1;
unsigned int v63 = 7U;
trace++;
switch (trace)
{
case 0: 
{
signed int v66;
signed int v67;
signed short v68;
v66 = 2 + v59;
v67 = 1 + v59;
v68 = v9 (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 10: 
{
signed int v69;
unsigned int v70;
v69 = v59 - v59;
v70 = v63 + v63;
v25 (v69, v70);
}
break;
case 12: 
return 3;
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
signed int v73;
signed char v74;
signed char v75;
unsigned char v76;
unsigned char v77;
v73 = v33 + v33;
v74 = -4 + 3;
v75 = v32 - -2;
v76 = 1 + 1;
v77 = v1 (v73, v74, v75, v76);
history[history_index++] = (int)v77;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
