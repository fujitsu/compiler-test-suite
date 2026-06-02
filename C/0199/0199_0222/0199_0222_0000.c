#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned char);
extern unsigned char (*v2) (signed int, unsigned char);
unsigned int v3 (signed int);
unsigned int (*v4) (signed int) = v3;
extern unsigned int v5 (unsigned char, unsigned short);
extern unsigned int (*v6) (unsigned char, unsigned short);
static unsigned char v7 (void);
static unsigned char (*v8) (void) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (unsigned int, signed short, unsigned char, unsigned int);
extern signed int (*v12) (unsigned int, signed short, unsigned char, unsigned int);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern unsigned char v15 (signed int, unsigned char, unsigned int);
extern unsigned char (*v16) (signed int, unsigned char, unsigned int);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (signed int, signed char);
extern signed short (*v22) (signed int, signed char);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
signed short v25 (unsigned char);
signed short (*v26) (unsigned char) = v25;
extern signed short v27 (signed int, signed short, unsigned int, signed short);
extern signed short (*v28) (signed int, signed short, unsigned int, signed short);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
unsigned int v32 = 1U;
signed char v31 = 3;

signed short v25 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -2;
signed short v36 = 2;
signed char v35 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
signed char v40 = 3;
unsigned int v39 = 4U;
signed char v38 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v7 (void)
{
{
for (;;) {
unsigned char v43 = 7;
unsigned short v42 = 2;
unsigned char v41 = 3;
trace++;
switch (trace)
{
case 4: 
{
signed int v44;
signed short v45;
unsigned int v46;
signed short v47;
signed short v48;
v44 = 2 - 0;
v45 = -4 + 2;
v46 = 7U + 4U;
v47 = 1 - 1;
v48 = v27 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 7: 
{
signed int v49;
signed short v50;
unsigned int v51;
signed short v52;
signed short v53;
v49 = 2 - -3;
v50 = -2 + 0;
v51 = 0U - 5U;
v52 = 1 + -2;
v53 = v27 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 10: 
{
signed int v54;
signed short v55;
unsigned int v56;
signed short v57;
signed short v58;
v54 = 3 + 2;
v55 = -4 + -1;
v56 = 0U + 6U;
v57 = 2 - 1;
v58 = v27 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 12: 
return 2;
case 15: 
return v43;
case 18: 
return v41;
default: abort ();
}
}
}
}

unsigned int v3 (signed int v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 7;
signed int v61 = 3;
signed char v60 = -1;
trace++;
switch (trace)
{
case 1: 
{
signed int v63;
signed short v64;
unsigned int v65;
signed short v66;
signed short v67;
v63 = -2 - v61;
v64 = -1 + 1;
v65 = 1U - 1U;
v66 = -4 - -3;
v67 = v27 (v63, v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 3: 
{
unsigned char v68;
v68 = v7 ();
history[history_index++] = (int)v68;
}
break;
case 6: 
{
unsigned char v69;
v69 = v7 ();
history[history_index++] = (int)v69;
}
break;
case 9: 
{
unsigned char v70;
v70 = v7 ();
history[history_index++] = (int)v70;
}
break;
case 13: 
return 7U;
case 16: 
return 6U;
case 19: 
return 0U;
case 21: 
return 6U;
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
unsigned char v74;
unsigned char v75;
v73 = v33 - v33;
v74 = 7 - 1;
v75 = v1 (v73, v74);
history[history_index++] = (int)v75;
}
} while (trace < 22);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
