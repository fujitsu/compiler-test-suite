#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed char v7 (unsigned short);
extern signed char (*v8) (unsigned short);
extern signed int v9 (unsigned short, signed int, signed short, unsigned int);
extern signed int (*v10) (unsigned short, signed int, signed short, unsigned int);
extern signed char v11 (signed char);
extern signed char (*v12) (signed char);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
signed char v15 (signed char, unsigned int, signed int);
signed char (*v16) (signed char, unsigned int, signed int) = v15;
signed short v17 (signed short, signed short, unsigned char);
signed short (*v18) (signed short, signed short, unsigned char) = v17;
extern unsigned char v19 (unsigned char, signed char);
extern unsigned char (*v20) (unsigned char, signed char);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern signed char v23 (signed int, unsigned int, signed char);
extern signed char (*v24) (signed int, unsigned int, signed char);
extern void v25 (unsigned int, signed short, unsigned char);
extern void (*v26) (unsigned int, signed short, unsigned char);
static unsigned int v27 (signed char, unsigned int);
static unsigned int (*v28) (signed char, unsigned int) = v27;
extern signed short v29 (signed char, unsigned char, unsigned short, signed int);
extern signed short (*v30) (signed char, unsigned char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed char v32 = -1;
signed char v31 = -4;

static unsigned int v27 (signed char v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 2;
signed char v37 = -3;
unsigned int v36 = 0U;
trace++;
switch (trace)
{
case 3: 
{
signed char v39;
unsigned char v40;
unsigned short v41;
signed int v42;
signed short v43;
v39 = 3 + v34;
v40 = 4 - 3;
v41 = 0 + 5;
v42 = v38 - v38;
v43 = v29 (v39, v40, v41, v42);
history[history_index++] = (int)v43;
}
break;
case 5: 
{
signed char v44;
unsigned char v45;
unsigned short v46;
signed int v47;
signed short v48;
v44 = v34 - -1;
v45 = 7 - 4;
v46 = 3 + 7;
v47 = 2 - v38;
v48 = v29 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 7: 
{
signed char v49;
unsigned char v50;
unsigned short v51;
signed int v52;
signed short v53;
v49 = -3 + v37;
v50 = 2 + 1;
v51 = 1 - 5;
v52 = v38 - 0;
v53 = v29 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 9: 
{
signed char v54;
unsigned char v55;
unsigned short v56;
signed int v57;
signed short v58;
v54 = v34 - 0;
v55 = 0 - 2;
v56 = 0 - 3;
v57 = 3 + 2;
v58 = v29 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 11: 
return 3U;
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
unsigned int v61 = 4U;
unsigned short v60 = 2;
signed int v59 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed short v62, signed short v63, unsigned char v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = -2;
unsigned short v66 = 6;
signed short v65 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed char v68, unsigned int v69, signed int v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = -4;
unsigned char v72 = 0;
signed short v71 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed char v74;
unsigned int v75;
unsigned int v76;
v74 = -2 - v68;
v75 = 0U + v69;
v76 = v27 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 12: 
return v68;
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
unsigned char v79;
v79 = v1 ();
history[history_index++] = (int)v79;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
