#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (unsigned char);
static unsigned char (*v2) (unsigned char) = v1;
static void v3 (signed short, signed int, unsigned int, signed int);
static void (*v4) (signed short, signed int, unsigned int, signed int) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern void v9 (signed short, signed char, signed int, signed short);
extern void (*v10) (signed short, signed char, signed int, signed short);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern signed short v13 (signed char, signed char);
extern signed short (*v14) (signed char, signed char);
extern unsigned char v15 (unsigned char, signed char, unsigned char, unsigned int);
extern unsigned char (*v16) (unsigned char, signed char, unsigned char, unsigned int);
static signed int v17 (signed int, signed int, unsigned char);
static signed int (*v18) (signed int, signed int, unsigned char) = v17;
extern signed int v19 (unsigned char);
extern signed int (*v20) (unsigned char);
extern signed int v21 (unsigned int, unsigned int, signed short, unsigned int);
extern signed int (*v22) (unsigned int, unsigned int, signed short, unsigned int);
extern unsigned short v23 (signed char, unsigned short, unsigned short);
extern unsigned short (*v24) (signed char, unsigned short, unsigned short);
extern signed int v25 (signed int, unsigned char, signed short, unsigned int);
extern signed int (*v26) (signed int, unsigned char, signed short, unsigned int);
extern signed short v27 (unsigned char, signed char);
extern signed short (*v28) (unsigned char, signed char);
extern signed char v29 (signed char, unsigned char);
extern signed char (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned int v32 = 1U;
unsigned char v31 = 4;

static signed int v17 (signed int v34, signed int v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 1;
unsigned char v38 = 1;
signed short v37 = 2;
trace++;
switch (trace)
{
case 6: 
{
signed char v40;
signed char v41;
signed short v42;
v40 = 3 + -1;
v41 = -4 - 0;
v42 = v13 (v40, v41);
history[history_index++] = (int)v42;
}
break;
case 8: 
{
signed char v43;
signed char v44;
signed short v45;
v43 = 2 + 2;
v44 = 0 + 1;
v45 = v13 (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 10: 
{
signed char v46;
unsigned short v47;
unsigned short v48;
unsigned short v49;
v46 = 0 + -1;
v47 = 2 - 6;
v48 = 4 - 0;
v49 = v23 (v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 12: 
return v34;
default: abort ();
}
}
}
}

static void v3 (signed short v50, signed int v51, unsigned int v52, signed int v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed int v56 = -2;
unsigned int v55 = 7U;
signed int v54 = -2;
trace++;
switch (trace)
{
case 3: 
{
signed int v57;
unsigned char v58;
signed short v59;
unsigned int v60;
signed int v61;
v57 = v54 - v56;
v58 = 6 + 3;
v59 = 2 - 2;
v60 = 6U - 7U;
v61 = v25 (v57, v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 5: 
{
signed int v62;
signed int v63;
unsigned char v64;
signed int v65;
v62 = -3 - v56;
v63 = 0 - v51;
v64 = 3 - 5;
v65 = v17 (v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

static unsigned char v1 (unsigned char v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = 3;
unsigned char v68 = 0;
unsigned short v67 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v70;
v70 = v5 ();
history[history_index++] = (int)v70;
}
break;
case 2: 
{
signed short v71;
signed int v72;
unsigned int v73;
signed int v74;
v71 = 0 + 1;
v72 = -2 - -4;
v73 = 5U - 4U;
v74 = 1 + 1;
v3 (v71, v72, v73, v74);
}
break;
case 14: 
return v66;
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
unsigned char v77;
unsigned char v78;
v77 = 4 + v31;
v78 = v1 (v77);
history[history_index++] = (int)v78;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
