#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (unsigned int, signed char, unsigned short, signed int);
static unsigned int (*v2) (unsigned int, signed char, unsigned short, signed int) = v1;
extern signed int v3 (unsigned int, unsigned short, unsigned char);
extern signed int (*v4) (unsigned int, unsigned short, unsigned char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (signed int, unsigned short);
extern unsigned short (*v14) (signed int, unsigned short);
void v15 (unsigned int, unsigned char, unsigned int, signed int);
void (*v16) (unsigned int, unsigned char, unsigned int, signed int) = v15;
unsigned char v17 (signed short);
unsigned char (*v18) (signed short) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (unsigned short, unsigned char, unsigned int);
extern unsigned int (*v22) (unsigned short, unsigned char, unsigned int);
extern unsigned short v23 (unsigned char, signed short);
extern unsigned short (*v24) (unsigned char, signed short);
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
extern signed short v27 (unsigned short, signed int, signed int);
extern signed short (*v28) (unsigned short, signed int, signed int);
unsigned short v29 (unsigned int, signed short, signed int);
unsigned short (*v30) (unsigned int, signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed short v32 = -2;
unsigned char v31 = 1;

unsigned short v29 (unsigned int v34, signed short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 4U;
signed short v38 = -4;
unsigned int v37 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = 2;
signed char v42 = 1;
unsigned char v41 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned int v44, unsigned char v45, unsigned int v46, signed int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = 0;
unsigned short v49 = 0;
signed char v48 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (unsigned int v51, signed char v52, unsigned short v53, signed int v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 6;
signed short v56 = 2;
signed int v55 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v58;
v58 = v5 ();
history[history_index++] = (int)v58;
}
break;
case 2: 
{
unsigned int v59;
signed char v60;
unsigned short v61;
signed int v62;
unsigned int v63;
v59 = v51 + v51;
v60 = 2 - 2;
v61 = 4 + v53;
v62 = 3 - v54;
v63 = v1 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 3: 
{
signed short v64;
v64 = v5 ();
history[history_index++] = (int)v64;
}
break;
case 5: 
{
unsigned int v65;
unsigned short v66;
unsigned char v67;
signed int v68;
v65 = v51 - v51;
v66 = v53 + v53;
v67 = v57 - 4;
v68 = v3 (v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 13: 
return 7U;
case 14: 
return 3U;
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
unsigned int v71;
signed char v72;
unsigned short v73;
signed int v74;
unsigned int v75;
v71 = 5U - 6U;
v72 = 1 + -1;
v73 = 5 + 7;
v74 = 2 + 1;
v75 = v1 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
