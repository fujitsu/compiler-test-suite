#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed int, unsigned int, unsigned char, signed int);
static unsigned char (*v2) (signed int, unsigned int, unsigned char, signed int) = v1;
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed char v5 (unsigned char, signed short);
extern signed char (*v6) (unsigned char, signed short);
extern signed int v7 (unsigned char, signed short);
extern signed int (*v8) (unsigned char, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern unsigned short v15 (signed char, signed char, unsigned char, signed char);
extern unsigned short (*v16) (signed char, signed char, unsigned char, signed char);
extern void v17 (signed char, unsigned char, signed char);
extern void (*v18) (signed char, unsigned char, signed char);
extern unsigned short v19 (unsigned int, signed int, signed char);
extern unsigned short (*v20) (unsigned int, signed int, signed char);
extern void v21 (signed short, signed char, unsigned int);
extern void (*v22) (signed short, signed char, unsigned int);
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
extern void v25 (unsigned short, signed short);
extern void (*v26) (unsigned short, signed short);
unsigned short v27 (signed short, unsigned int, unsigned short, unsigned int);
unsigned short (*v28) (signed short, unsigned int, unsigned short, unsigned int) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
unsigned int v32 = 7U;
unsigned short v31 = 4;

unsigned short v27 (signed short v34, unsigned int v35, unsigned short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 1U;
unsigned short v39 = 5;
signed short v38 = -4;
trace++;
switch (trace)
{
case 2: 
return v39;
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed short v43 = -3;
unsigned int v42 = 0U;
unsigned char v41 = 1;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v44;
signed short v45;
v44 = 3 + 5;
v45 = -1 - 1;
v25 (v44, v45);
}
break;
case 6: 
{
unsigned short v46;
signed short v47;
v46 = 0 + 1;
v47 = -3 - -1;
v25 (v46, v47);
}
break;
case 8: 
{
unsigned short v48;
signed short v49;
v48 = 2 + 0;
v49 = 3 + -3;
v25 (v48, v49);
}
break;
case 10: 
{
unsigned short v50;
signed short v51;
v50 = 4 + 3;
v51 = v43 - -3;
v25 (v50, v51);
}
break;
case 12: 
return v42;
default: abort ();
}
}
}
}

static unsigned char v1 (signed int v52, unsigned int v53, unsigned char v54, signed int v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 0U;
signed int v57 = 1;
signed char v56 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v59;
signed short v60;
signed int v61;
v59 = v54 + 0;
v60 = 3 - -2;
v61 = v7 (v59, v60);
history[history_index++] = (int)v61;
}
break;
case 14: 
return 5;
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
signed int v64;
unsigned int v65;
unsigned char v66;
signed int v67;
unsigned char v68;
v64 = -3 - -2;
v65 = 2U - 3U;
v66 = 3 + 4;
v67 = -4 - -4;
v68 = v1 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
